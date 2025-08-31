./bootstrap.sh
./configure --datadir=$PREFIX/share/libpostal_data --prefix=$PREFIX $SSE_FLAG

make -j${CPU_COUNT}
make install

# Used for testing
libtool --mode install install src/address_parser $PREFIX/bin
