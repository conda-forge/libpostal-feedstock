./bootstrap.sh

if [[ "$target_platform" == win-* ]]; then
    sed -i 's/enum {false, true};/#if !defined(false) \&\& !defined(true)\n&\n#endif/' src/utf8proc/utf8proc.h
fi

./configure --datadir=$PREFIX/share/libpostal_data --prefix=$PREFIX $SSE_FLAG

if [[ "$target_platform" == win-* ]]; then
    patch_libtool
fi

make -j${CPU_COUNT}
make install

# Used for testing
libtool --mode install install src/address_parser $PREFIX/bin
