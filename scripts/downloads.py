#!/usr/bin/python3

import json
import os
import subprocess
import shutil
from typing import Dict, List
import requests
import concurrent.futures
import argparse
import urllib.request
import shutil
from contextlib import closing
from tqdm import tqdm

def get_packages(filename: str) -> [Dict[str, str], List[str], List[str]]:
    print('getting packages from %s ......' % filename)
    packages = {}
    patches = []
    others = []
    with open(filename, encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if line.startswith("**"):
                linesplit = line.split("**")
                if linesplit[1].rstrip(':') == 'Grub2':
                    continue
                if linesplit[1].rstrip(':') == 'Graphite':
                    packages[linesplit[1].rstrip(':')] = 'https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz'
                    continue
                if linesplit[1].rstrip(':') == 'Zlib':
                    packages[linesplit[1].rstrip(':')] = 'https://zlib.net/fossils/zlib-1.2.13.tar.gz'
                    continue
                if linesplit[1].rstrip(':') == 'E2fsprogs':
                    packages[linesplit[1].rstrip(':')] = 'https://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/v1.47.0/e2fsprogs-1.47.0.tar.gz'
                    continue
                if linesplit[1].rstrip(':') == 'Userspace-RCU':
                    packages[linesplit[1].rstrip(':')] = 'https://lttng.org/files/urcu/userspace-rcu-latest-0.14.tar.bz2'
                    continue
                if linesplit[1].rstrip(':') == 'UnZip':
                    packages[linesplit[1].rstrip(':')] = 'https://downloads.sourceforge.net/infozip/unzip60.tar.gz'
                    continue
                if linesplit[1].rstrip(':') == 'Zip':
                    packages[linesplit[1].rstrip(':')] = 'https://downloads.sourceforge.net/infozip/zip30.tar.gz'
                    continue

                packages[linesplit[1].rstrip(':')] = linesplit[2].strip()
            elif line.startswith("http") and (line.endswith(".patch") or line.endswith(".patch.gz")):
                if line.find("qt-"):
                    continue
                patches.append(line)
            elif line.startswith("http") and not (line.endswith("/") or line.endswith("html") or line.endswith("downloads") or line.endswith(".git") or line.rstrip().endswith("releases")):
                if line.find("java/17") != -1 or line.find("java/18") != -1 or line.find("qt-") != -1 or line.find("docbook.org") != -1 or line.find("mesa-23") != -1 or line.find("pyxdg-") != -1 or line.find("squashfs") != -1 or line.find("wayland-protocols") != -1:
                    continue
                if line.find("blfs-systemd-") != -1:
                    line = 'https://www.linuxfromscratch.org/blfs/downloads/systemd/blfs-systemd-units-20230816.tar.xz'
                elif line.find("xinit-1") != -1:
                    line = 'https://www.x.org/archive/individual/app/xinit-1.4.2.tar.xz'
                elif line.find("dracut-056") != -1:
                    line = 'https://www.kernel.org/pub/linux/utils/boot/dracut/dracut-056.tar.xz'
                others.append(line)
    return packages, patches, others

def dump_packages(packages: Dict[str, str], patches: List[str], others: List[str]):
    print('dumpping packages ......')
    patches.sort()
    others.sort()
    json_obj = {'packages': packages, 'patches': patches, 'others': others}
    with open('packages.json', "w", encoding="utf-8") as f:
        json.dump(json_obj, f, ensure_ascii=False, indent=4, separators=(',', ":"))

def make_grub2(download_dir: str):
    print('making grub2 to %s ......' % download_dir)
    repo_url = 'https://git.savannah.gnu.org/git/grub.git'
    cur_dir = os.getcwd()
  
    result = subprocess.run(['git', 'clone', '-b', 'master', repo_url, '--depth', '1'], capture_output=True, text=True)
    if result.returncode != 0:
        print("git clone failed:", result.stderr)
        return
  
    os.chdir("./grub")
    grub_tar = cur_dir + "/grub-2.12.tar"
    subprocess.run(['git', 'archive', '--format=tar', '--output', grub_tar, 'master'], capture_output=True, text=True)
    subprocess.run(['./bootstrap'], capture_output=True, text=True)
    os.chdir("./gnulib")
    gnulib_tar = cur_dir + "/gnulib.tar"
    subprocess.run(['git', 'archive', '--format=tar', '--output', gnulib_tar, 'HEAD'], capture_output=True, text=True)
    os.chdir(cur_dir)
    shutil.rmtree("./grub")
    os.mkdir("./grub-2.12")
    os.chdir("./grub-2.12")
    subprocess.run(['tar', 'xvf', grub_tar], capture_output=True, text=True)
    os.mkdir("./gnulib")
    subprocess.run(['tar', 'xvf', gnulib_tar, '-C', 'gnulib'], capture_output=True, text=True)
    subprocess.run(['./bootstrap'], capture_output=True, text=True)
    os.chdir(cur_dir)
    subprocess.run(['tar', '-czf', download_dir + '/grub-2.12.tar.gz', 'grub-2.12'], capture_output=True, text=True)
    shutil.rmtree("./grub-2.12")
    os.remove(gnulib_tar)
    os.remove(grub_tar)

def download_file(download_dir: str, url: str, idx: int):
    filename = url.split('/')[-1]
    print('[%d] downloading file %s ......' % (idx, filename))
    download_file = download_dir + '/' + filename
    if not os.path.exists(download_file) or os.path.getsize(download_file) <= 0:
        if url.startswith("ftp:"):
            with closing(urllib.request.urlopen(url)) as r:
                with open(download_file, 'wb') as f:
                    shutil.copyfileobj(r, f)
        else:
            response = requests.get(url, stream=True)
            response.raise_for_status()
            total = int(response.headers.get('content-length', 0))
            with open(download_file, "wb") as f, tqdm(
                desc=filename,
                total=total,
                unit='iB',
                unit_scale=True,
                unit_divisor=1024,
            ) as bar:
                for data in response.iter_content(chunk_size=1024):
                    size = f.write(data)
                    bar.update(size)
    
    print('[%d] download file %s [SUCCESSFULLY]' % (idx, filename))
    return filename

def download(download_dir: str, packages: Dict[str, str], patches: List[str], others: List[str]):
    urls = list(packages.values()) + patches + others
    print('downloading %d packages to %s ......' % (len(urls), download_dir))
    with concurrent.futures.ThreadPoolExecutor(max_workers=1) as executor:
        futures = [executor.submit(download_file, download_dir, url, idx) for idx, url in enumerate(urls, start=1)]

        completed_files = [future.result() for future in concurrent.futures.as_completed(futures)]

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('-d', '--download-dir', dest='download_dir', type=str, help='download dir', default='')
    return parser.parse_args()

args = parse_args()
if len(args.download_dir) == 0:
    print('download dir is empty.')
    exit(1)

filename = "../CLFS_For_LoongArch64.md"
result = get_packages(filename)
dump_packages(result[0], result[1], result[2])
download(args.download_dir, result[0], result[1], result[2])
make_grub2(args.download_dir)
