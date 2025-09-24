./bootstrap.sh
./configure --datadir=$PREFIX/share/libpostal_data --prefix=$PREFIX

make -j${CPU_COUNT}
make install

# Used for testing
libtool --mode install install src/address_parser $PREFIX/bin
