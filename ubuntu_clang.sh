mkdir -p build
cd build
cmake -G"Ninja" -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules -DWITH_OPENMP=ON -DWITH_CUDA=ON -DENABLE_AVX2=ON -DTESTS_ENABLED=OFF -DWITH_OPENGL=ON -DBUILD_TESTS=OFF -DBUILD_opencv_sfm=ON -DPYTHON_DEFAULT_EXECUTABLE=$(which python3) -DBUILD_opencv_cudacodec=OFF ../