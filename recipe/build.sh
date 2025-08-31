./bootstrap.sh
./configure --datadir=$PREFIX/share/libpostal_data --prefix=$PREFIX $SSE_FLAG

make -j${CPU_COUNT}
make install
