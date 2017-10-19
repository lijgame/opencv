mkdir build
cd build
cmake.exe .. -G"Visual Studio 15 2017 Win64" -DTESTS_ENABLED=OFF  -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DOPENMP=ON -DBUILD_EXAMPLES=ON -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules/ -DWITH_CUDA=ON -DWITH_OPENGL=ON