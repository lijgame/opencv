mkdir -p build
cd build
cmake -G"Ninja" -DCMAKE_C_COMPILER=/usr/bin/clang-7 \
                -DCMAKE_CXX_COMPILER=/usr/bin/clang++-7 \
                -DCMAKE_LINKER=/usr/bin/ld.lld \
                -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules \
                -DWITH_OPENMP=ON \
                -DWITH_CUDA=ON \
                -DCPU_BASELINE=AVX2 \
                -DTESTS_ENABLED=OFF \
                -DWITH_OPENGL=ON -DBUILD_TESTS=OFF \
                -DBUILD_opencv_sfm=ON \
                -DPYTHON_DEFAULT_EXECUTABLE=$(which python3) \
                -DBUILD_opencv_cudacodec=OFF \
                ../
ninja
sudo ninja install 
# cp lib/python3/cv2.cpython-36m-x86_64-linux-gnu.so ~/.local/lib/python3.6/site-packages/cv2.so