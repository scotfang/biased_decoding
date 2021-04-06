#!/bin/bash -ex

## Install MKL dependency
#wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB
#sudo apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB
#sudo sh -c 'echo "deb https://apt.repos.intel.com/oneapi all main" > /etc/apt/sources.list.d/oneAPI.list'
#sudo apt-get update
#sudo apt-get install intel-oneapi-mkl-devel
#
## Under project root, run the following commands.
#git submodule update --init
#rm -rf build
mkdir -p build && pushd build
cmake -DCMAKE_BUILD_TYPE=Debug -DWITH_MKL=ON -DWITH_CUDA=ON -DENABLE_PROFILING=ON -DWITH_TESTS=ON -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-10.0 ..
make -j4
popd

#pushd build
#make install  # copies ctranslate2 library to /usr/local/lib which gets used when building pybind bindings
#popd
#pushd python
#python setup.py develop -u
#rm -rf build/
#rm -rf ctranslate2.egg-info/
#rm -f ctranslate2/translator.cpython-37m-x86_64-linux-gnu.so
#python setup.py build

#pip install -e .
#popd 

#### From official CTranslate2 docs
# Install the CTranslate2 library and command line client
#sudo make install && cd ..
#
## Build and install the Python wheel.
#cd python
#pip install -r install_requirements.txt
#python setup.py bdist_wheel
#pip install dist/*.whl
#
## Run the tests with pytest.
#pip install -r tests/requirements.txt
#pytest tests/test.py
