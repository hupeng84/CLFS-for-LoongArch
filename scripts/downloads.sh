#!/bin/bash

declare -A packageMap

packageMap["Acl"]="https://download.savannah.gnu.org/releases/acl/acl-2.3.1.tar.xz"
packageMap["Attr"]="https://download.savannah.gnu.org/releases/attr/attr-2.5.1.tar.xz"
packageMap["Autoconf"]="https://ftp.gnu.org/gnu/autoconf/autoconf-2.71.tar.xz"
packageMap["Autogen"]="https://ftp.gnu.org/gnu/autogen/rel5.18.16/autogen-5.18.16.tar.xz"
packageMap["Automake"]="https://ftp.gnu.org/gnu/automake/automake-1.16.5.tar.xz"
packageMap["Bash"]="https://ftp.gnu.org/gnu/bash/bash-5.2.15.tar.gz"
packageMap["BC"]="https://github.com/gavinhoward/bc/archive/6.5.0/bc-6.5.0.tar.gz"
packageMap["Binutils"]="https://ftp.gnu.org/gnu/binutils/binutils-2.40.tar.xz"
packageMap["Bison"]="https://ftp.gnu.org/gnu/bison/bison-3.8.2.tar.xz"
packageMap["Boost"]="https://boostorg.jfrog.io/artifactory/main/release/1.81.0/source/boost_1_81_0.tar.bz2"
packageMap["Bzip2"]="https://www.sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz"
packageMap["Coreutils"]="https://ftp.gnu.org/gnu/coreutils/coreutils-9.2.tar.xz"
packageMap["Check"]="https://github.com/libcheck/check/releases/download/0.15.2/check-0.15.2.tar.gz"
packageMap["CMake"]="https://cmake.org/files/v3.26/cmake-3.26.1.tar.gz"
packageMap["CPIO"]="https://ftp.gnu.org/gnu/cpio/cpio-2.13.tar.bz2"
packageMap["Ctags"]="http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz"
packageMap["CURL"]="https://curl.se/download/curl-8.0.1.tar.gz"
packageMap["D-Bus"]="https://dbus.freedesktop.org/releases/dbus/dbus-1.15.4.tar.xz"
packageMap["Dejagnu"]="https://ftp.gnu.org/gnu/dejagnu/dejagnu-1.6.3.tar.gz"
packageMap["DHCPCD"]="https://roy.marples.name/downloads/dhcpcd/dhcpcd-9.4.1.tar.xz"
packageMap["Diffutils"]="https://ftp.gnu.org/gnu/diffutils/diffutils-3.9.tar.xz"
packageMap["Dosfstools"]="https://github.com/dosfstools/dosfstools/releases/download/v4.2/dosfstools-4.2.tar.gz"
packageMap["Doxygen"]="https://www.doxygen.nl/files/doxygen-1.9.6.src.tar.gz"
packageMap["E2fsprogs"]="https://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/v1.47.0/e2fsprogs-1.47.0.tar.gz"
packageMap["Ethtool"]="https://www.kernel.org/pub/software/network/ethtool/ethtool-6.2.tar.xz"
packageMap["Expat"]="https://jaist.dl.sourceforge.net/project/expat/expat/2.5.0/expat-2.5.0.tar.xz"
packageMap["Expect"]="https://sourceforge.net/projects/expect/files/Expect/5.45.4/expect5.45.4.tar.gz"
packageMap["File"]="https://astron.com/pub/file/file-5.44.tar.gz"
packageMap["Findutils"]="https://ftp.gnu.org/gnu/findutils/findutils-4.9.0.tar.xz"
packageMap["Flex"]="https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz"
packageMap["Fontconfig"]="https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.14.2.tar.xz"
packageMap["Freetype"]="https://downloads.sourceforge.net/freetype/freetype-2.13.0.tar.xz"
packageMap["Fribidi"]="https://github.com/fribidi/fribidi/releases/download/v1.0.12/fribidi-1.0.12.tar.xz"
packageMap["Gawk"]="https://ftp.gnu.org/gnu/gawk/gawk-5.2.1.tar.xz"
packageMap["GC"]="https://www.hboehm.info/gc/gc_source/gc-8.2.2.tar.gz"
packageMap["GDB"]="https://ftp.gnu.org/gnu/gdb/gdb-13.1.tar.xz"
packageMap["GDBM"]="https://ftp.gnu.org/gnu/gdbm/gdbm-1.23.tar.gz"
packageMap["Gettext"]="https://ftp.gnu.org/gnu/gettext/gettext-0.21.1.tar.xz"
packageMap["Git"]="https://www.kernel.org/pub/software/scm/git/git-2.40.0.tar.xz"
packageMap["Glib"]="https://download.gnome.org/sources/glib/2.76/glib-2.76.1.tar.xz"
packageMap["Glibc"]="https://ftp.gnu.org/gnu/libc/glibc-2.37.tar.xz"
packageMap["Glibmm"]="https://download.gnome.org/sources/glibmm/2.76/glibmm-2.76.0.tar.xz"
packageMap["GMP"]="https://ftp.gnu.org/gnu/gmp/gmp-6.2.1.tar.xz"
packageMap["GnuTLS"]="https://www.gnupg.org/ftp/gcrypt/gnutls/v3.8/gnutls-3.8.0.tar.xz"
packageMap["Gobject-Introspection"]="https://download.gnome.org/sources/gobject-introspection/1.76/gobject-introspection-1.76.1.tar.xz"
packageMap["GPerf"]="https://ftp.gnu.org/gnu/gperf/gperf-3.1.tar.gz"
packageMap["GPM"]="https://www.nico.schottelius.org/software/gpm/archives/gpm-1.20.7.tar.bz2"
packageMap["Graphite2"]="https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz"
packageMap["Grep"]="https://ftp.gnu.org/gnu/grep/grep-3.10.tar.xz"
packageMap["Groff"]="https://ftp.gnu.org/gnu/groff/groff-1.22.4.tar.gz"
packageMap["Guile"]="https://ftp.gnu.org/gnu/guile/guile-3.0.9.tar.xz"
packageMap["Gzip"]="https://ftp.gnu.org/gnu/gzip/gzip-1.12.tar.xz"
packageMap["Harfbuzz"]="https://github.com/harfbuzz/harfbuzz/releases/download/7.1.0/harfbuzz-7.1.0.tar.xz"
packageMap["Iana-Etc"]="https://github.com/Mic92/iana-etc/releases/download/20230320/iana-etc-20230320.tar.gz"
packageMap["ICU4C"]="https://github.com/unicode-org/icu/releases/download/release-72-1/icu4c-72_1-src.tgz"
packageMap["Inetutils"]="https://ftp.gnu.org/gnu/inetutils/inetutils-2.4.tar.xz"
packageMap["Inih"]="https://github.com/benhoyt/inih/archive/r56/inih-r56.tar.gz"
packageMap["intltool"]="https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz"
packageMap["IPRoute2"]="https://www.kernel.org/pub/linux/utils/net/iproute2/iproute2-6.2.0.tar.xz"
packageMap["Jasper"]="https://github.com/jasper-software/jasper/releases/download/version-4.0.0/jasper-4.0.0.tar.gz"
packageMap["KBD"]="https://www.kernel.org/pub/linux/utils/kbd/kbd-2.5.1.tar.xz"
packageMap["Kmod"]="https://www.kernel.org/pub/linux/utils/kernel/kmod/kmod-30.tar.xz"
packageMap["Less"]="https://www.greenwoodsoftware.com/less/less-608.tar.gz"
packageMap["Lcms"]="https://downloads.sourceforge.net/lcms/lcms2-2.15.tar.gz"
packageMap["Libaio"]="https://ftp.debian.org/debian/pool/main/liba/libaio/libaio_0.3.113.orig.tar.gz"
packageMap["Libcap"]="https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.68.tar.xz"
packageMap["Libelf"]="https://sourceware.org/ftp/elfutils/0.189/elfutils-0.189.tar.bz2"
packageMap["Libevent"]="https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz"
packageMap["Libffi"]="https://github.com/libffi/libffi/archive/v3.4.4/libffi-3.4.4.tar.gz"
packageMap["Libgudev"]="https://download.gnome.org/sources/libgudev/237/libgudev-237.tar.xz"
packageMap["Libgusb"]="https://github.com/hughsie/libgusb/archive/0.4.5/libgusb-0.4.5.tar.gz"
packageMap["Libjpeg-Turbo"]="https://downloads.sourceforge.net/libjpeg-turbo/libjpeg-turbo-2.1.91.tar.gz"
packageMap["Libmng"]="https://downloads.sourceforge.net/libmng/libmng-2.0.3.tar.xz"
packageMap["Libmnl"]="https://netfilter.org/projects/libmnl/files/libmnl-1.0.5.tar.bz2"
packageMap["Libnl"]="https://github.com/thom311/libnl/releases/download/libnl3_7_0/libnl-3.7.0.tar.gz"
packageMap["Libpipeline"]="https://download.savannah.gnu.org/releases/libpipeline/libpipeline-1.5.7.tar.gz"
packageMap["Libpng"]="https://downloads.sourceforge.net/libpng/libpng-1.6.39.tar.xz"
packageMap["LibRaw"]="https://www.libraw.org/data/LibRaw-0.21.1.tar.gz"
packageMap["Libsigc++"]="https://download.gnome.org/sources/libsigc++/3.4/libsigc++-3.4.0.tar.xz"
packageMap["Libtasn1"]="https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.19.0.tar.gz"
packageMap["Libtool"]="https://ftp.gnu.org/gnu/libtool/libtool-2.4.7.tar.xz"
packageMap["Libusb"]="https://github.com/libusb/libusb/releases/download/v1.0.26/libusb-1.0.26.tar.bz2"
packageMap["Libunistring"]="https://ftp.gnu.org/gnu/libunistring/libunistring-1.1.tar.xz"
packageMap["Libxcrypt"]="https://github.com/besser82/libxcrypt/releases/download/v4.4.33/libxcrypt-4.4.33.tar.xz"
packageMap["Libxml2"]="http://xmlsoft.org/sources/libxml2-2.9.12.tar.gz"
packageMap["Libxslt"]="http://xmlsoft.org/sources/libxslt-1.1.34.tar.gz"
packageMap["Links"]="http://links.twibright.com/download/links-2.29.tar.bz2"
packageMap["Linux-headers"]="https://www.kernel.org/pub/linux/kernel/v6.x/linux-6.2.8.tar.xz"
packageMap["Linux-Firmware"]="https://www.kernel.org/pub/linux/kernel/firmware/linux-firmware-20230310.tar.xz"
packageMap["LLVM"]="https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.0/llvm-project-16.0.0.src.tar.xz"
packageMap["Lua"]="https://www.lua.org/ftp/lua-5.4.4.tar.gz"
packageMap["LVM2"]="https://sourceware.org/ftp/lvm2/LVM2.2.03.20.tgz"
packageMap["M4"]="https://ftp.gnu.org/gnu/m4/m4-1.4.19.tar.xz"
packageMap["Make"]="https://ftp.gnu.org/gnu/make/make-4.4.1.tar.gz"
packageMap["Man-DB"]="https://download.savannah.gnu.org/releases/man-db/man-db-2.11.2.tar.xz"
packageMap["Man-Pages"]="https://www.kernel.org/pub/linux/docs/man-pages/man-pages-6.03.tar.xz"
packageMap["MarkupSafe"]="https://files.pythonhosted.org/packages/source/M/MarkupSafe/MarkupSafe-2.1.2.tar.gz"
packageMap["Mdadm"]="https://www.kernel.org/pub/linux/utils/raid/mdadm/mdadm-4.2.tar.xz"
packageMap["Meson"]="https://github.com/mesonbuild/meson/releases/download/1.0.1/meson-1.0.1.tar.gz"
packageMap["MPC"]="https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz"
packageMap["MPFR"]="https://www.mpfr.org/mpfr-4.2.0/mpfr-4.2.0.tar.xz"
packageMap["Ncurses"]="https://ftp.gnu.org/gnu/ncurses/ncurses-6.4.tar.gz"
packageMap["Net-Tools"]="https://downloads.sourceforge.net/project/net-tools/net-tools-2.10.tar.xz"
packageMap["Nettle"]="https://ftp.gnu.org/gnu/nettle/nettle-3.8.1.tar.gz"
packageMap["Ninja"]="https://github.com/ninja-build/ninja/archive/v1.11.1/ninja-1.11.1.tar.gz"

packageMap["NSPR"]="https://archive.mozilla.org/pub/nspr/releases/v4.35/src/nspr-4.35.tar.gz"
packageMap["NSS"]="https://archive.mozilla.org/pub/security/nss/releases/NSS_3_89_RTM/src/nss-3.89.tar.gz"
packageMap["Openjpeg"]="https://github.com/uclouvain/openjpeg/archive/v2.5.0/openjpeg-2.5.0.tar.gz"
packageMap["OpenSSL"]="https://www.openssl.org/source/openssl-3.1.0.tar.gz"
packageMap["OpenSSH"]="https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.3p1.tar.gz"
packageMap["P11-Kit"]="https://github.com/p11-glue/p11-kit/releases/download/0.24.1/p11-kit-0.24.1.tar.xz"
packageMap["Patch"]="https://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz"
packageMap["PCIUtils"]="https://mirrors.edge.kernel.org/pub/software/utils/pciutils/pciutils-3.9.0.tar.xz"
packageMap["PCRE"]="https://sourceforge.net/projects/pcre/files/pcre/8.45/pcre-8.45.tar.bz2"
packageMap["PCRE2"]="https://github.com/PCRE2Project/pcre2/releases/download/pcre2-10.42/pcre2-10.42.tar.bz2"
packageMap["Perl"]="https://www.cpan.org/src/5.0/perl-5.34.1.tar.gz" # from 5.36 -> 5.34.1
# packageMap["Perl"]="https://www.cpan.org/src/5.0/perl-5.36.0.tar.gz" 
packageMap["Pkg-Config"]="https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz"
packageMap["Procps-NG"]="https://sourceforge.net/projects/procps-ng/files/Production/procps-ng-4.0.3.tar.xz"
packageMap["PSmisc"]="https://sourceforge.net/projects/psmisc/files/psmisc/psmisc-23.6.tar.xz"
packageMap["Python"]="https://www.python.org/ftp/python/3.11.2/Python-3.11.2.tar.xz"
packageMap["Python-Pip"]="https://files.pythonhosted.org/packages/6b/8b/0b16094553ecc680e43ded8f920c3873b01b1da79a54274c98f08cb29fca/pip-23.0.1.tar.gz"
packageMap["Python-Setuptools"]="https://files.pythonhosted.org/packages/25/f3/d68c20919bc774c6cb127f1762f2f2f999d700a58198556e883dd3700e58/setuptools-67.6.0.tar.gz"
packageMap["QEMU"]="https://download.qemu.org/qemu-7.2.0.tar.xz"
packageMap["Readline"]="https://ftp.gnu.org/gnu/readline/readline-8.2.tar.gz"
packageMap["Ruby"]="https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.1.tar.xz"
packageMap["Rust"]="https://static.rust-lang.org/dist/rustc-1.68.1-src.tar.gz"
packageMap["Sed"]="https://ftp.gnu.org/gnu/sed/sed-4.9.tar.xz"
packageMap["Shadow"]="https://github.com/shadow-maint/shadow/releases/download/v4.11.1/shadow-4.11.1.tar.xz"
packageMap["Sqlite3"]="https://github.com/sqlite/sqlite/archive/version-3.41.2/sqlite-3.41.2.tar.gz"
packageMap["Systemd"]="https://github.com/systemd/systemd/archive/v253/systemd-253.tar.gz"
packageMap["Sudo"]="https://www.sudo.ws/dist/sudo-1.9.13p3.tar.gz"
packageMap["Tar"]="https://ftp.gnu.org/gnu/tar/tar-1.34.tar.xz"
packageMap["Tcl"]="https://downloads.sourceforge.net/tcl/tcl8.6.13-src.tar.gz"
packageMap["Texinfo"]="https://ftp.gnu.org/gnu/texinfo/texinfo-7.0.3.tar.xz"
packageMap["Tiff"]="https://download.osgeo.org/libtiff/tiff-4.5.0.tar.xz"
packageMap["UnRAR"]="https://www.rarlab.com/rar/unrarsrc-6.2.6.tar.gz"
packageMap["UnZip"]="ftp://ftp.info-zip.org/pub/infozip/src/unzip60.tgz"
packageMap["URI"]="https://www.cpan.org/authors/id/O/OA/OALDERS/URI-5.17.tar.gz"
packageMap["Usbutils"]="https://www.kernel.org/pub/linux/utils/usb/usbutils/usbutils-015.tar.xz"
packageMap["Userspace-RCU"]="https://lttng.org/files/urcu/userspace-rcu-0.14.tar.bz2"
packageMap["Util-Linux"]="https://www.kernel.org/pub/linux/utils/util-linux/v2.38/util-linux-2.38.1.tar.xz"
packageMap["Vala"]="https://download.gnome.org/sources/vala/0.56/vala-0.56.5.tar.xz"
packageMap["VIM"]="https://github.com/vim/vim/archive/v9.0.1429/vim-9.0.1429.tar.gz"
packageMap["WGet"]="https://ftp.gnu.org/gnu/wget/wget-1.21.3.tar.gz"
packageMap["Wireless-Tools"]="https://hewlettpackard.github.io/wireless-tools/wireless_tools.29.tar.gz"
packageMap["Wpa_Supplicant"]="https://w1.fi/releases/wpa_supplicant-2.10.tar.gz"
packageMap["Xfsprogs"]="https://www.kernel.org/pub/linux/utils/fs/xfs/xfsprogs/xfsprogs-6.2.0.tar.xz"
packageMap["XML-Parser"]="https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-Parser-2.46.tar.gz"
packageMap["XZ"]="https://tukaani.org/xz/xz-5.4.2.tar.xz"
packageMap["Zip"]="ftp://ftp.info-zip.org/pub/infozip/src/zip30.tgz"
packageMap["Zlib"]="https://zlib.net/zlib-1.2.13.tar.xz"
packageMap["Zstd"]="https://github.com/facebook/zstd/releases/download/v1.5.4/zstd-1.5.4.tar.gz"

packageMap["libpng-1.6.37-apng.patch"]="https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.37-apng.patch.gz"
packageMap["wireless_tools-29-fix_iwlist_scanning-1.patch"]="https://www.linuxfromscratch.org/patches/blfs/svn/wireless_tools-29-fix_iwlist_scanning-1.patch"

packageMap["ssl-certs"]="https://github.com/sunhaiyong1978/CLFS-for-LoongArch/releases/download/20210818/ssl-certs.tar.gz"
packageMap["tzdata"]="https://data.iana.org/time-zones/releases/tzdata2023b.tar.gz"

packageMap["blfs-systemd-units"]="https://www.linuxfromscratch.org/blfs/downloads/systemd/blfs-systemd-units-20220720.tar.xz"

checkFile() {
    str=$1
    my_array=(${str//\// })
    len=${#my_array[*]}
    fileName=${my_array[len-1]}
    if [ -f "$fileName" ];then
        return 0
    fi
    return 1
}

download() {
    echo "downloading $1 ......."
    checkFile $2
    if [ $? -eq 1 ];then
        wget -q --show-progress $2
    else
        echo "文件已存在!"
    fi
}

for key in ${!packageMap[@]}
do
    download $key ${packageMap[$key]}
done

if [ $? -ne 0 ];then
    exit 1
fi

# GCC
echo "downloading GCC ......."
if [ -f 'gcc-13.0.0.tar.gz' ];then
    echo "文件已存在！"
else
    git clone git://sourceware.org/git/gcc.git --depth 1
    pushd gcc
        git archive --format=tar --output ../gcc-13.0.0.tar "master"
    popd
    mkdir gcc-13.0.0
    pushd gcc-13.0.0
        tar xvf ../gcc-13.0.0.tar
    popd
    tar -czf gcc-13.0.0.tar.gz gcc-13.0.0
    rm -rf gcc-13.0.0 gcc-13.0.0.tar gcc
fi

# Grub2
echo "downloading Grub2 ......."
if [ -f 'grub-2.11.tar.gz' ];then
    echo "文件已存在！"
else
    git clone -b "dev/patchwork/efi" https://github.com/loongarch64/grub.git --depth 1
    pushd grub
        git archive --format=tar --output ../grub-2.11.tar "dev/patchwork/efi"
        ./bootstrap
        pushd gnulib
            git archive --format=tar --output ../../gnulib.tar HEAD
        popd
    popd
    mkdir grub-2.11
    pushd grub-2.11
        tar xvf ../grub-2.11.tar
        mkdir gnulib
        tar xvf ../gnulib.tar -C gnulib
        ./bootstrap
    popd
    tar -czf grub-2.11.tar.gz grub-2.11
    rm -rf grub-2.11 grub gnulib.tar grub-2.11.tar
fi

# Linux
echo "downloading Linux ......."
if [ -f 'linux-6.git.tar.gz' ];then
    echo "文件已存在！"
else
    git clone https://github.com/loongson/linux.git -b loongarch-next --depth 1
    pushd linux
        git archive --format=tar --output ../linux-6.git.tar "loongarch-next"
    popd
    mkdir linux-6.git
    pushd linux-6.git
        tar xvf ../linux-6.git.tar
    popd
    tar -czf linux-6.git.tar.gz linux-6.git
    rm -rf linux-6.git linux-6.git.tar linux
fi

# Patch
echo "downloading Patches ......."
git clone https://github.com/sunhaiyong1978/CLFS-for-LoongArch.git --depth 1
pushd CLFS-for-LoongArch
    cp patches/ctags-5.8-fix_form_fedora.patch ..
    cp patches/ctags-5.8-for-gcc_12.patch ..
    cp patches/gc-8.0.6-add-loongarch.patch ..
    cp patches/kbd-2.4.0-backspace-1.patch ..
    cp patches/nspr-4.32-add-loongarch64.patch ..
    cp patches/stack-direction-add-loongarch.patch ..
    # cp patches/perl-5.36.0-loongarch64-config.sh ..
    cp patches/perl-5.34.0-la-config_for_glibc_34.sh ..
    # cp patches/rustc-1.64.0-add-loongarch-support.patch ..
    # cp patches/rustc-1.63.0-fix-libc-for-loongarch-syscalls.patch ..
    # cp patches/userspace-rcu-0.13.1-add-loongarch64.patch ..
popd
rm -rf CLFS-for-LoongArch

git clone https://github.com/maximeh/buildroot.git --depth 1
pushd buildroot
    cp package/expect/0001-enable-cross-compilation.patch ..
popd
rm -rf buildroot

echo 'download finished!!!'

