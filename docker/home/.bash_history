export ANDROID_NDK_HOME=$HOME/android/android-ndk-r21d
./speedbox/jsi/node.source-config.sh 
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
./speedbox/jsi/node.source-build.sh 
vim node/src/debug_utils.cc
grep dl_iterate_phdr ../jsi-devtools/libc/* -r
vim node/src/debug_utils.cc
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
./speedbox/jsi/node.source-build.sh 
vim node/node.gyp
vim node/node.gypi 
ls
ls node/out/Release/
ls node/out/Release/obj.target/
rm node/out/Release/obj.target/libnode.a 
./speedbox/jsi/node.source-build.sh 
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
./speedbox/jsi/node.source-build.sh 
cd ../
cd jsi-devtools/
ls
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
cd libc/
ls
cd objs/
ls
rm *
cd ../
ls
unpacked
mkdir unpacked
cd unpacked/
ls
ar
ar x ../android-30-libc.a 
ls
grep posix_fadvise * -r
cp posix_fadvise.o ../objs/
cd ../../
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -h
ls 
cd libc/objs/
ls
cd ../
ls
cd unpacked/
ls
rm atexit.o 
ar ../android-libc.a *.o
ar r ../android-libc.a *.o
cd ../
ls
ll
cd ../
ls
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
cd libc/unpacked/
ar x ../android-30-libc.a 
rm __aeabi.o
ar r ../android-libc.a *.o
cd ../
cd ..
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
find ~/android/android-ndk-r21d/ -name libc.so
cp /root/android/android-ndk-r21d/platforms/android-30/arch-arm/usr/lib/libc.so
cp /root/android/android-ndk-r21d/platforms/android-30/arch-arm/usr/lib/libc.so libc/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
exit
ls
cd git/elastos/FileCoin/
ls
cd cpp-filecoin/
ls
cd build/
ls
cmake -DCLANG_TIDY=ON ..
ls
cd git/elastos/FileCoin/cpp-filecoin/
ls
cd build/
ls
cmake -DCLANG_TIDY=ON ..
ls
make -j
cc
which cc
ll /usr/bin/cc
ll /etc/alternatives/cc
apt remove gcc
ll /etc/alternatives/cc
make -j
apt autoremove
make -j
clang-tidy
export CC=clang-tidy
make -j
which c++
ll /usr/bin/c++
ll /etc/alternatives/c++
make -j
export CC=
make -j
make -j V=1
make -j VERBOSE=1
make VERBOSE=1
vim ../cmake/clang-tidy.cmake 
make VERBOSE=1
apt remove clang-tidy
make VERBOSE=1
apt install clang-tidy
apt remove clang-tidy
apt install clang-tidy
make VERBOSE=1
cp /usr/bin/clang /usr/bin/clang-tidy
make VERBOSE=1
rm -r /usr/bin/clang-tidy
ln -s /usr/bin/clang /usr/bin/clang-tidy
make VERBOSE=1
cmake ..
make VERBOSE=1
rm -r /usr/bin/clang-tidy
make VERBOSE=1
cmake ..
cmake -DCLANG_TIDY=OFF ..
make VERBOSE=1
make -j
make
apt install opencl
apt install OpenCL
apt install opencl*
apt install nvidia-opencl
apt install nvidia-opencl-dev
make
exit
ls
cd git/jsi/jsi-devtools/
ls
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
grep __memcpy_base libc/* -r
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
git status
git tr
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
cd libc/
ls
rm libc.30.so 
rm -r unpacked/
cd objs/
ls
cd ../
ls
cd ../
ls
c libc/
cd libc/
ls
mkdir unpacked
cd unpacked/
ls
ar x ../android-30-libc.a 
cd ../
ls
rm libc/objs/*
./scripts/autobuild-jsi-devtools-android.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cd libc/unpacked/
ls
cp NetdClientDispatch.o  android_set_abort_message.o  dirent.o   libc_init_static.o  posix_fadvise.o             stpncpy.o __set_errno.o         async_safe_log.o             fortify.o  poll.o              static_function_dispatch.o  syscalls-arm.o
cp NetdClientDispatch.o  android_set_abort_message.o  dirent.o   libc_init_static.o  posix_fadvise.o             stpncpy.o __set_errno.o         async_safe_log.o             fortify.o  poll.o              static_function_dispatch.o  syscalls-arm.o ../objs/
rm *
ar x ../android-30-libc.a 
cp NetdClientDispatch.o  android_set_abort_message.o  dirent.o   libc_init_static.o  posix_fadvise.o             stpncpy.o __set_errno.o         async_safe_log.o             fortify.o  poll.o              static_function_dispatch.o  syscalls-arm.o ../objs/
cd ../../
./scripts/autobuild-jsi-devtools-android.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
./scripts/autobuild-jsi-devtools-android.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
rm -r libc/objs/*
./scripts/autobuild-jsi-devtools-android.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
ls libc/
ls libc/objs/
ls libc/unpacked/
cp libc/unpacked/* libc/objs/
rm libc/objs/getauxval.o 
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -h
ar -d libc/android-19-libc-tidy.a getauxval.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
nm libc/android-19-libc-tidy.a |grep calloc
grep calloc libc/unpacked/* -r
grep calloc libc/unpacked/* -r |xargs nm
grep calloc libc/unpacked/* -r |xargs nm |grep calloc
grep calloc libc/unpacked/* -r 
ar -d libc/android-19-libc-tidy.a getauxval.o malloc_common.o
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
ar -d libc/android-19-libc-tidy.a malloc_common.o
ar -d libc/android-19-libc-tidy.a malloc_*.o
ar -d libc/android-19-libc-tidy.a malloc_common.o  malloc_io.o  malloc_limit.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
nm libc/android-19-libc-tidy.a |grep calloc
objcopy -N calloc libc/android-19-libc-tidy.a
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
ls ~/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/
~/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/arm-linux-androideabi-objcopy -N calloc libc/android-19-libc-tidy.a 
~/android/android-ndk-r21d/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi
cd libc/unpacked/
ls
cd ../
ls
rm -r st*
ls
mkdir unpacked-arm
cd unpacked-arm/
~/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/arm-linux-androideabi-ar x ../android-19-libc.a 
ls
cd ../../
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a malloc_common.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a malloc_common.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
ar -d libc/android-19-libc-tidy.a getauxval.o pthread_key.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a getauxval.o pthread_*.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a getauxval.o pthread_atfork.o   pthread_create.o  pthread_getcpuclockid.o  pthread_join.o   pthread_once.o        pthread_setschedparam.o pthread_attr.o     pthread_detach.o  pthread_getschedparam.o  pthread_key.o    pthread_rwlock.o      pthread_sigqueue.o     pthread_barrier.o  pthread_equal.o   pthread_gettid_np.o      pthread_kill.o   pthread_self.o        pthread_spinlock.o     pthread_cond.o     pthread_exit.o    pthread_internal.o       pthread_mutex.o  pthread_setname_np.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls /root/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/sysroot
ls /root/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/
ls /root/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/
ls /root/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/30/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
find ~/android/android-ndk-r21d/ -name cinttypes
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
cd ../node/node/out/Release/obj.target/
ls
nm libnode.a |grep basic_string
nm libnode.a |c++filt 
nm libnode.a |c++filt |grep "std::__ndk1::char_traits<char>::copy"
nm libnode.a |c++filt |grep basic_string 
nm libnode.a |c++filt |grep basic_string |grep " T "
nm libnode.a |c++filt |grep basic_string |grep append
cd ../../
cd ../
cd jsi-devtools/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
rm -r out/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
cd libc/
ls
cp android-30-libc.a android-30-libc-tidy.a
ls
ar -d android-30-libc-tidy.a jemalloc.o
cd ..
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cp android-30-libc.a android-30-libc-tidy.a
cp libc/android-30-libc.a libc/android-30-libc-tidy.a 
objcopy --remove-section .text$calloc libc/android-30-libc.a libc/android-30-libc-tidy.a 
~/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/arm-linux-androideabi-objcopy -N calloc libc/android-19-libc-tidy.a 
~/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/arm-linux-androideabi-objcopy --remove-section .text$calloc libc/android-30-libc.a libc/android-30-libc-tidy.a 
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
~/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/arm-linux-androideabi-objcopy --remove-section .text$calloc libc/android-30-libc.a libc/android-30-libc-tidy.a 
ls
rm -r libc/st*
ar -d libc/android-19-libc-tidy.a getauxval.o pthread_atfork.o   pthread_create.o  pthread_getcpuclockid.o  pthread_join.o   pthread_once.o        pthread_setschedparam.o pthread_attr.o     pthread_detach.o  pthread_getschedparam.o  pthread_key.o    pthread_rwlock.o      pthread_sigqueue.o     pthread_barrier.o  pthread_equal.o   pthread_gettid_np.o      pthread_kill.o   pthread_self.o        pthread_spinlock.o     pthread_cond.o     pthread_exit.o    pthread_internal.o       pthread_mutex.o  pthread_setname_np.o
~/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/arm-linux-androideabi-objcopy --remove-section .text$calloc libc/android-30-libc.a libc/android-30-libc-tidy.a 
ar -d libc/android-30-libc-tidy.a getauxval.o pthread_atfork.o   pthread_create.o  pthread_getcpuclockid.o  pthread_join.o   pthread_once.o        pthread_setschedparam.o pthread_attr.o     pthread_detach.o  pthread_getschedparam.o  pthread_key.o    pthread_rwlock.o      pthread_sigqueue.o     pthread_barrier.o  pthread_equal.o   pthread_gettid_np.o      pthread_kill.o   pthread_self.o        pthread_spinlock.o     pthread_cond.o     pthread_exit.o    pthread_internal.o       pthread_mutex.o  pthread_setname_np.o
ls
cd libc/
ls
file android-19-libc.a android-30-libc.a 
cd ../
~/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/arm-linux-androideabi-objcopy --remove-section .text$calloc libc/android-19-libc.a libc/android-19-libc-tidy.a 
objcopy --remove-section .text$calloc libc/android-19-libc.a libc/android-19-libc-tidy.a 
ls
rm -r libc/st*
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
cd libc/
ls
rm android-30-libc++.a android-30-libc-tidy.a 
ls
cd ../../
cd ../
ls
cd jsi/node/
ls
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
export ANDROID_NDK_HOME=$HOME/android/android-ndk-r21d
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
ls
./speedbox/jsi/node.source-build.sh 
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
./speedbox/jsi/node.source-build.sh 
cd ../
cd jsi-devtools/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a getauxval.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a getauxval.o jemalloc.o 
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a getauxval.o jemalloc.o jemalloc_wrapper.o malloc_limit.o malloc_common.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a getauxval.o jemalloc.o jemalloc_wrapper.o malloc_limit.o malloc_common.o static_function_dispatch.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cd -
cd libc/
ls
nm android-30-libc.a > sym
vim sym 
cd -
ar -d libc/android-19-libc-tidy.a getauxval.o jemalloc.o jemalloc_wrapper.o malloc_limit.o malloc_common.o static_function_dispatch.o memcpy.o memset.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
ar -d libc/android-19-libc-tidy.a memcpy.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
ar -d libc/android-19-libc-tidy.a malloc_common.o
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
ar -d libc/android-19-libc-tidy.a malloc_common.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a malloc_common.o static_function_dispatch.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cp libc/android-19-libc.a libc/android-19-libc-tidy.a 
ar -d libc/android-19-libc-tidy.a malloc_common.o memmove.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ar -d libc/android-19-libc-tidy.a malloc_common.o memmove.o static_function_dispatch.o
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cd git/elastos/FileCoin/cpp-filecoin/
ls
ls build/
ls test/
ls build/test
ls build/test_bin/
ls
ls build/
./build/test_bin/address_test 
./build/test_bin/genesis_test
file ./build/test_bin/genesis_test
find build/ -name *.a
ls
ls build/test_bin/
cd build/test_bin/
ls
grep with_seed * -r
ls
./message_test 
apt install nvidia-opencl-dev
ls
./message_test 
gdb ./message_test 
apt install gdb
gdb ./message_test 
ls
nm message_test |grep with_seed
gdb ./message_test 
grep with_seed * -r
./keystore_test
nm message_test |grep with_seed
nm message_test |c++filt |grep with_seed
gdb message_test 
gdb ./keystore_test 
ls
grep with_seed * -r
./secp256k1_provider_test 
./account_actor_test 
cd ../../
ls
cd ../
ls
git clone https://github.com/filecoin-project/lotus.git
exit
cd git/elastos/FileCoin/lotus/
ls
sudo apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl
exit
sudo apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl
go
curl https://golang.org/dl/go1.15.1.linux-amd64.tar.gz
wget https://golang.org/dl/go1.15.1.linux-amd64.tar.gz
ls
rm go1.15.1.linux-amd64.tar.gz 
cd git/elastos/FileCoin/
ls
wget https://golang.org/dl/go1.15.1.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.14.3.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.15.1.linux-amd64.tar.gz 
export PATH=$PATH:/usr/local/go/bin
go version
make clean && make all
sudo make installls
ls
cd lotus/
make clean && make all
make all
ls
./lotus
ls
cd ../
ls
cd filecoin-signing-tools/
ls
make install_wasmpack
make install_deps_rust
cargo
apt install cargo
cargo
make install_deps_rust
export https_proxy=http://192.168.124.7:7890 http_proxy=http://192.168.124.7:7890 all_proxy=socks5://192.168.124.7:7891
make install_deps_rust
make install_wasmpack
export https_proxy= http_proxy= all_proxy=
make install_wasmpack
curl
make install_wasmpack
apt install rustup
apt install rust
apt install rustc
apt install rust*
make install_deps_rust
pkg-config
pkg-config -v
apt install openssl-dev
apt install openssl*
apt install ssl*
apt install libssl-dev
pkg-config openssl
find /usr/local/ -name openssl.pc
find /usr -name openssl.pc
openssl
locale openssl.pc
locale openssl
which openssl
ls /usr/lib/pkgconfig/
ls /usr/lib64/pkgconfig/
apt install openssl
apt install openssl-dev
make install_deps_rust
ls
make
vim Makefile 
ls
grep ffi * -r
ls
vim Cargo.toml 
cargo
cargo build
apt install libudev-dev
cargo build
ls
vim Cargo.toml 
ls
find examples/ -name Cargo.toml
cargo 
cargo run
gcc main.c -L. -lfilecoin_signer_ffi -o main
ls
cd examples/ffi/c
gcc main.c -L. -lfilecoin_signer_ffi -o main
exit
cd git/jsi/jsi-devtools/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cd ../node/
./speedbox/jsi/node.source-build.sh 
ls
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
export ANDROID_NDK_HOME=$HOME/android/android-ndk-r21d
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
./speedbox/jsi/node.source-build.sh 
ls ../v8/v8/out.gn/android.arm.release/lib.unstripped/
find ../v8/v8/out.gn/android.arm.release/ -name *.a
./speedbox/jsi/node.source-build.sh 
./speedbox/jsi/node.source-config.sh ../v8/v8/include/ ../v8/v8/out.gn/android.arm.release/libv8.81.so
./speedbox/jsi/node.source-build.sh 
cd ../jsi-devtools/
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
cd libc/
ls
nm android-19-libc++.a |c++filt |::append 
nm android-19-libc++.a |c++filt |grep ::append 
nm android-19-libc++.a
file android-19-libc++.a
file android-19-libstdc++.a
ll
vim android-19-libc++.a
vim android-19-libstdc++.a
nm android-19-libstdc++.a |c++filt |grep ::append 
nm android-19-libstdc++.a |c++filt 
vim android-19-libstdc++.als
cd ../
ls
cd out/
ls
nm libjsidt.81.0.so |grep append |c++filt 
nm libjsidt.81.0.so |grep copy |c++filt 
nm libjsidt.81.0.so |c++filt |grep ::copy
pwd
find /opt/workspace/git/misc/MyApplication2/app/build/ -name *.so
find /opt/workspace/git/misc/MyApplication2/ -name *.so
find /opt/workspace/git/misc/MyApplication2/ -name *so
find /opt/workspace/git/misc/MyApplication2/ -name "*.so"
nm libjsidt.81.0.so |c++filt |grep ::copy
nm /opt/workspace/git/misc/MyApplication2/app/build/intermediates/cmake/debug/obj/armeabi-v7a/libnative-lib.so |c++filt |grep ::copy
file libjsidt.81.0.so 
file /opt/workspace/git/misc/MyApplication2/app/build/intermediates/cmake/debug/obj/armeabi-v7a/libnative-lib.so
cd ..
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
readelf --all  out/libjsidt.81.0.so > readelf.log
vim readelf.log 
cat readelf.log |c++filt |grep ::copy
cat readelf.log |c++filt |grep copy
nm /opt/workspace/git/misc/MyApplication2/app/build/intermediates/cmake/debug/obj/armeabi-v7a/libnative-lib.so |c++filt |grep ::copy
nm out/libjsidt.81.0.so |c++filt |grep ::copy
nm /opt/workspace/git/misc/MyApplication2/app/build/intermediates/cmake/debug/obj/armeabi-v7a/libnative-lib.so |c++filt |grep ::copy
cd ../node/
./speedbox/jsi/node.source-build.sh 
cd -
./speedbox/jsi/jsi.source-build.sh --ndk-home=$HOME/android/android-ndk-r21d --nodejs-dir=../node/node --v8-dir=../v8/v8/
ls
vim node.patch 
nm out/libjsidt.81.0.so |grep InitializeInspector
exit
ls
cd git/elastos/FileCoin/
ls
cd Elastos.SDK.Keypair.C/
ls
rm -r build/Darwin/
./scripts/build.sh 
ls wrapper/filecoin/
ls libfilcrypto-linux-x86_64
ls libfilcrypto-linux-x86_64*
cd wrapper/filecoin/
ls libfilcrypto-linux-x86_64*
cd -
./scripts/build.sh 
ll build/sysroot/Linux/x86_64/lib/
ll -h build/sysroot/Linux/x86_64/lib/
./scripts/build.sh 
ls
find . -name libElastos.SDK.Keypair.C.so
ll ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
ll -h ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
nm ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so |grep fil
objdump -h
objcopy -h
file ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
objcopy --strip-unneeded ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
ll -h ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
nm -D ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
./scripts/build.sh 
objcopy --strip-unneeded ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
nm ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so |grep fil
nm ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
ll ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
ll -h ./build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
grep new_secp256k1 ~/.hunter/* -r
cd /opt/workspace/git/elastos/FileCoin/lotus
./lotus daemon
exit
cd git/elastos/FileCoin/lotus/
ls
./lotus
apt install mesa-opencl-icd
./lotus
./lotus wallet
./lotus wallet new
./lotus wallet new bls
./lotus wallet default
./lotus wallet sign
./lotus wallet h
./lotus wallet sign -v
./lotus wallet -v -h
./lotus wallet -v new
./lotus wallet list
./lotus chain head
lotus daemon
./lotus daemon
./lotus sync status
pwd
exit
cd git/elastos/FileCoin/Elastos.SDK.Keypair.C/
ls
./scripts/build.sh -tg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/src/
rm -r ./build/Linux/x86_64/Elastos.SDK.Keypair.C/
./scripts/build.sh -tg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/src/
nm wrapper/filecoin/libfilcrypto-linux-x86_64.a |grep clCreateBuffer
nm ../cpp-filecoin/build/test_bin/bls_provider_test |grep clCreateBuffer
apt install mesa-opencl-icd
./scripts/build.sh -tg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/src/
apt install ocl-icd-opencl-dev
./scripts/build.sh -tg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/src/
git status
rm test/TestUtility.cpp 
git checkout test
git status
./scripts/build.sh -tg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/src/
cd ../
ls
mkdir Elastos.SDK.Keypair.C-ori
cp -r Elastos.SDK.Keypair.C/.git Elastos.SDK.Keypair.C-ori/
cd Elastos.SDK.Keypair.C-ori/
git status
git checkout .
git status
ls
./scripts/build.sh -tg
cd ../Elastos.SDK.Keypair.C
ls
rm -r build/Linux/x86_64/Elastos.SDK.Keypair.C/
./scripts/build.sh -tg
git status
git diff src/CMakeLists.txt 
git diff src/Elastos.Wallet.Utility.cpp 
./scripts/build.sh -tg
git status
rm test/main.cpp 
./scripts/build.sh -tg
file /opt/workspace/git/elastos/FileCoin/Elastos.SDK.Keypair.C/build/sysroot/Linux/x86_64/lib/libElastos.SDK.Keypair.C.so
./scripts/build.sh -tg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/src/
./scripts/build.sh -tg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
gdb ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
apt install gdb
gdb ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
ls
./scripts/build.sh -h
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
rm -r build/Linux/x86_64/Elastos.SDK.Keypair.C/
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
gdb ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
gdb ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
gdb ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
git status
git add .
ll ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
ll -h ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
strip ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
ll -h ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
git tr
strip -h
strip -s ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
ll -h ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
grep clCreate ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
nm ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
git sttus
git status
cd wrapper/filecoin/
ls
mkdir Linux-x86_64
mv libfilcrypto-linux-x86_64.a libfilcrypto.a 
ls
mv lib* Linux-x86_64/
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
cd -
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
cd -
ls
mkdir include
mv filcrypto.h include/
ls
mkdir lib
mv Linux-x86_64 lib/
ls
cd -
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
git status
git add .

ll  ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility
ll -h ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility
strip -s ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility
ll -h ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
cd ../
ls
cd filecoin-ffi/
ls
./build.sh 
apt install cargo
exit
cd git/elastos/FileCoin/Elastos.SDK.Keypair.C/
ls
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
cp -r /Users/mengxk/workspace/git/elastos/FileCoin/cpp-filecoin/core/primitives /Users/mengxk/workspace/git/elastos/FileCoin/Elastos.SDK.Keypair.C/wrapper/filecoin/include/
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
apt install ocl-icd-opencl-dev
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtilit
find ~/.hunter/  -name "*.a" |xargs grep ContentIdentifierCodec
nm  /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_cid.a  |grep make_error_code
cp /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_cid.a wrapper/filecoin/lib/
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtilit
ls wrapper/filecoin/lib/
mv wrapper/filecoin/lib/libp2p_cid.a wrapper/filecoin/lib/Linux-x86_64/
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtilit
nm  /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_cid.a  |grep make_error_code |c++filt 
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/*.a |grep make_error_code |c++filt 
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |grep make_error_code |c++filt 
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |grep make_error_code |c++filt  |grep Multihash
grep make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a
grep make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep Multihash
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_cidd.a |grep make_error_code
grep make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep ContentIdentifierCodec
grep make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a
grep -h
man grep
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep ContentIdentifierCodec
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep -l ContentIdentifierCodec xargs grep -l Multihash
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_kad.a |grep make_error_code
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep -l ContentIdentifierCodec xargs grep -l make_error_code
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep -l ContentIdentifierCodec |xargs nm |grep make_error_code
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep -l ContentIdentifierCodec |xargs nm |grep Multihash
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep -l ContentIdentifierCodec |xargs nm |grep "make_error_code.*Multihash"
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep "make_error_code.*Multihash"
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_multihash.a |grep make_error_code
cp /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_multihash.a wrapper/filecoin/lib/Linux-x86_64/
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtilit
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep sha256
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep encodeBase58
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_multibase_codec.a |grep encodeBase58
cp /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_multibase_codec.a wrapper/filecoin/lib/Linux-x86_64/
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep MultibaseCodecImpl
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_crypto_common.a |grep sha256
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_crypto_* |grep sha256
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_* |grep sha256
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep "sha256.cpp"
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep "sha256.*basic_string_view"
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep _ZN6libp2p6crypto6sha256ESt17basic_string_viewIcSt11char_traitsIcEE"
grep -l make_error_code /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a |xargs grep _ZN6libp2p6crypto6sha256ESt17basic_string_viewIcSt11char_traitsIcEE
nm /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_* |grep sha256.*string
grep sha256.*string /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p*.a 
cp /root/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/libp2p_sha.a wrapper/filecoin/lib/Linux-x86_64/
./scripts/build.sh -stg && ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtilit
ll ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
ll -h ./build/Linux/x86_64/Elastos.SDK.Keypair.C/test/TestUtility 
ls
cd ../cpp-filecoin
ls
vim CMakeLists.txt 
find . -name CMakeLists.txt |xargs grep OpenCL
apt uninstall ocl-icd-opencl-dev
apt remove ocl-icd-opencl-dev
exit
cd git/elastos/FileCoin/cpp-filecoin
cd build/
ls
make
make 
cd ../../
ls
cd filecoin-ffi/
ls
./build.sh 
export PATH=$PATH:/usr/local/go/bin
./build.sh 
apt install cargo
ls
./build.sh -h
cd ../cpp-filecoin
ls
cd build/
make
apt remove ocl-icd-opencl-dev
make
grep OpenCL ../* -r
ls
pwd
cd ../deps/filecoin-ffi
ls
grep OpenCL * -r
vim filcrypto.pc 
grep OpenCL * -ri
cd ../../
cd build/
make
make -j4
ls
cd deps/
ls
cd ../
ls
cd ../
ls
find . -name libfilc*
rm ./deps/filecoin-ffi/libfilcrypto.a
rm ./deps/our-filecoin-ffi/lib/libfilcrypto.a 
cd build/
make
rm -r ../deps/our-filecoin-ffi/
make
cmake
cmake -DCLANG_TIDY=OFF ..
cd ../
ls
git status
ls
cp -r ../cpp-filecoin-orig/deps/our-filecoin-ffi deps/
ls deps/
ls deps/our-filecoin-ffi/
ls deps/our-filecoin-ffi/filecoin_ffi_commit_installed 
rm deps/our-filecoin-ffi/filecoin_ffi_commit_installed 
cmake -DCLANG_TIDY=OFF ..
cd build/
cmake -DCLANG_TIDY=OFF ..
make -j4
make
cmake -DCLANG_TIDY=OFF ..
grep OpenCL * -r
cmake -DCLANG_TIDY=OFF ..
make
grep OpenCL * -r
ls ../cmake/3rdparty/CodeCoverage.cmake 
vim ../cmake/3rdparty/CodeCoverage.cmake 
vim _3rdParty/Hunter/config-id/config.cmake
find ~/.hunter/ -name "*.pc"
grep OpenCL ~/.hunter/_Base/130ab68/96defef/7fcdc86/Install/* -r
cmake -DCLANG_TIDY=OFF ..
make
cd 
cd -
ls ~/.hunter/_Base/130ab68/96defef/7fcdc86/Install/lib/
ls
pwd
make
cmake -DCLANG_TIDY=OFF ..
ls /root/.hunter/_Base/Download/Hunter/0.23.257-soramitsu1/130ab68/Unpacked/cmake/projects/Boost
cd /root/.hunter/_Base/Download/Hunter/0.23.257-soramitsu1/130ab68/Unpacked/cmake/projects/Boost
ls
vim generate.sh 
grep OpenCL * -r
ls
grep OpenCL * -ri
vim hunter.cmake
ls
cd ../../
ls
cd ../
ls
cd ../
ls
cd ../
ls
cd ../
ls
grep opencl Boost/* -r
grep opencl Boost/* -ri
cd ../
ls
grep opencl Boost/* -ri
grep opencl * -ri
vim 130ab68/96defef/82084ac/config.cmake
grep opencl * -ri
cd 130ab68/96defef/7fcdc86/Build/Boost
ls
cd ../
ls
vim Boost.DI/args.cmake.NOLF 
ls
cd Boost
ls
vim args.cmake.NOLF 
cat args.cmake.NOLF 
grep opencl * -i
vim internal_deps.id
vim internal_deps.id.NOLF 
vim cache.sha1 
cd __program_options/
ls
grep opencl * -i
ls
grep opencl * -ri
ls
cd ../../
ls
cd ../
ls
cd ../
ls
cd /opt/workspace/git/
ls
cd elastos/FileCoin/filecoin
ls
cd elastos/FileCoin/filecoin-ffi/
ls
export PATH=$PATH:/usr/local/go/bin
./build.sh 
grep opencl * -ri
./build.sh 
git status
git checkout -- .
./build.sh 
export PATH=$PATH:/root/.cargo/bin
./build.sh 
cargo
tee
vim install-filcrypto 
ls
grep OpenCL * -r
ls
./install-filcrypto 
ls
grep OpenCL * -r
ls ru
ls rust/
ls rust/src/
ls
vim build.sh 
cat build.sh 
FFI_BUILD_FROM_SOURCE=1 make
ls
find . -name build-release.sh
grep "+1.43.1" * -r
ls
find . -name build-release.sh
vim rust/scripts/build-release.sh 
which cargo
vim rust/build.rs 
ls
git status
FFI_BUILD_FROM_SOURCE=1 make
cargo +1.43.1 build --release
cargo -h
cargo build +1.43.1 --release
cargo build --release
vim rust/build.rs 
vim rust/scripts/build-release.sh 
FFI_BUILD_FROM_SOURCE=1 make
grep "CL/cl" * -r
FFI_BUILD_FROM_SOURCE=1 make
git status
FFI_BUILD_FROM_SOURCE=1 make
cd ~/.cargo/registry/index/github.com-1ecc6299db9ec823/
git status
ls
cd ../
ls
cd ../
ls
cd cache/
ls
cd github.com-1ecc6299db9ec823/
ls
cd ../
ls
cd src/
ls
cd github.com-1ecc6299db9ec823/
ls
grep neptune * -r
cd -
cd /opt/workspace/git/elastos/FileCoin/cpp-filecoin
cd ../filecoin-ffi/
ls
make
FFI_BUILD_FROM_SOURCE=1 make
ls
ll libfilcrypto.a 
ll -h libfilcrypto.a 
rm libfilcrypto.a 
./build.sh 
ls
vim rust/filcrypto.pc
ls
vim rust/filcrypto.pc.template 
ls
vim rust/Cargo.toml 
./build.sh 
vim build.sh 
ls
grep cl libfilcrypto.a 
nm libfilcrypto.a |grep cl
nm libfilcrypto.a |grep cl[A-Z]
ls
grep fil_ocl ~/.hunter/* -r
ls
cd ../cpp-filecoin
ls
cd build/
make
make VERBOSE=1
cd ../
cd ../filecoin-ffi/
ls
FFI_BUILD_FROM_SOURCE=1 make
ll libfilcrypto.a 
ll -h libfilcrypto.a 
cd -
ls
cd build/
ls
make
exit
cd git/elastos/FileCoin/Elastos.SDK.Keypair.C/
ls
cd build/Linux/x86_64/Elastos.SDK.Keypair.C/
ls
make
ls
./test/TestUtility 
make
./test/TestUtility 
make
./test/TestUtility 
exit
cd git/elastos/FileCoin/Elastos.SDK.Keypair.C/
cd build/Linux/x86_64/Elastos.SDK.Keypair.C/
make
cd -
cd ../cpp-filecoin
ls
cd build/
ls
make
ls
make
cd -
cd ../Elastos.SDK.Keypair.C/
make
cd build/Linux/x86_64/Elastos.SDK.Keypair.C/
make
./test/TestUtility 
make
./test/TestUtility 
make
./test/TestUtility 
make
./test/TestUtility 
gdb test/TestUtility 
apt install gdb
gdb test/TestUtility 
make
./test/TestUtility 
gdb ./test/TestUtility 
make
./test/TestUtility 
ls
cd ../
ls
cd ../
ls
cd ../../../
cd filecoin-ffi/
ls
make clean
export PATH=$PATH:/root/.cargo/bin
make clean
rustup 
rustup target add aarch64-linux-android
rustup target add aarch64-linux-android armv7-linux-androideabi i686-linux-android
ls
vim rust/Cargo.toml 
find . -name .cargo
vim /root/.cargo/config
ls /root/android/android-ndk-r21d/
vim /root/.cargo/config
find /root/android/android-ndk-r21d -name aarch64-linux-android-ar
find /root/android/android-ndk-r21d -name aarch64-linux-android-clang.cmd
vim /root/.cargo/config 
find /root/android/android-ndk-r21d -name aarch64-linux-android-clang
ls /root/android/android-ndk-r21d/build/core/toolchains/
ls /root/android/android-ndk-r21d/build/core/toolchains/aarch64-linux-android-clang/
ls /root/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/
ls /root/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/*clang
vim /root/.cargo/config 
ls /root/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/*ar
vim /root/.cargo/config 
cd rust/
cargo build --target aarch64-linux-android --release
cargo build -h
vim /root/.cargo/config 
cat /root/.cargo/config 
cargo build --target aarch64-linux-android --release
rustup target add aarch64-linux-android armv7-linux-androideabi i686-linux-android
rustup target add aarch64-linux-android
cargo build --target aarch64-linux-android --release
ls
vim ../build.sh 
cat ../build.sh 
cbindgen --clean --config cbindgen.toml --crate filcrypto --output ../include/filcrypto.h
vim ../build.sh 
ls
ls src/
find . -name *.a
ls
nm ./target/aarch64-linux-android/release/libfilcrypto.a
ls
ls target/
ls target/release/
find . -name *.a
find . -name libfilcrypto.a
file ./target/aarch64-linux-android/release/libfilcrypto.a
ls
vim Cargo.toml 
cargo build --target aarch64-linux-android --release
file ./target/aarch64-linux-android/release/libfilcrypto.rlib 
vim Cargo.toml 
cargo build --target aarch64-linux-android --release
vim Cargo.toml 
cargo build --target aarch64-linux-android --release
file ./target/aarch64-linux-android/release/libfilcrypto.so 
ll ./target/aarch64-linux-android/release/libfilcrypto.so 
ll -h ./target/aarch64-linux-android/release/libfilcrypto.so 
nm ./target/aarch64-linux-android/release/libfilcrypto.so 
nm ./target/aarch64-linux-android/release/libfilcrypto.so  |grep " T "
vim Cargo.toml 
file ./target/aarch64-linux-android/release/libfilcrypto.so 
cargo build --target aarch64-linux-android --release
file ./target/aarch64-linux-android/release/libfilcrypto.so 
ll -h ./target/aarch64-linux-android/release/libfilcrypto.so 
vim Cargo.toml 
cargo build --target aarch64-linux-android --release
vim Cargo.toml 
cargo build --target aarch64-linux-android --release
vim Cargo.toml 
cargo build --target aarch64-linux-android --release
vim Cargo.toml 
cargo build --target aarch64-linux-android --release
vim src/bls/api.rs 
vim Cargo.toml 
vim src/bls/api.rs 
cargo build --target aarch64-linux-android --release
ls
ls src/
vim src/lib.rs 
cargo build --target aarch64-linux-android --release
vim src/lib.rs 
cargo build --target aarch64-linux-android --release
file ./target/aarch64-linux-android/release/libfilcrypto.so 
ll -h ./target/aarch64-linux-android/release/libfilcrypto.so 
nm ./target/aarch64-linux-android/release/libfilcrypto.so |grep " T "
file ./target/aarch64-linux-android/release/libfilcrypto.so 
strip -h
strip --discard-all  ./target/aarch64-linux-android/release/libfilcrypto.so
find /root/android/android-ndk-r21d -name aarch64-linux-android-ar
/root/android/android-ndk-r21d/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android-strip -s ./target/aarch64-linux-android/release/libfilcrypto.so
ll -h ./target/aarch64-linux-android/release/libfilcrypto.so 
nm ./target/aarch64-linux-android/release/libfilcrypto.so |grep " T "
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
cd build/Linux/
ls
make
./speedbox/carrier/native.sdk-build.sh
cd ../../
./speedbox/carrier/native.sdk-build.sh
m4
m4 -v
m4 --help
m4 --version
apt-get install libtool
sudo apt-get install libtool
autoreconf --install
ls deps/cjose/external/src/libcjose-stamp/libcjose-configure
find . -name cjose
rm -r ./build/Linux/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose
./speedbox/carrier/native.sdk-build.sh
cd ./build/Linux/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose
ls
cd -
cd ./build/Linux/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose/
ls
autoreconf --install
cd -
./speedbox/carrier/native.sdk-build.sh
cd -
ls
vim configure.ac 
autoreconf --install --force
cd ../
ls
cd libcjose-stamp/
ls
cd ../
ls
cd ../
ls
cd tmp/
ls
cd ../
ls
cd ../
ls
ls cjose/
ls cjose/external/
ls cjose/external/src/
ls cjose/external/src/libcjose
cd ../../../
ls
cd ../../
ls
vim Elastos.NET.Carrier.Native.SDK/external/src/Elastos.NET.Carrier.Native.SDK/deps/CMakeLists.txt 
pwd
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/
cd ./build/Linux/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose/
ls
vim configure.ac 
cd -
./speedbox/carrier/native.sdk-build.sh
autoconf --version
sudo apt update autoconf
sudo apt upgrade autoconf
sudo apt install autoconf
cd -
vim configure.ac 
cd -
./speedbox/carrier/native.sdk-build.sh
pkg-config
sudo apt install pkg-config
./speedbox/carrier/native.sdk-build.sh
cd -
vim configure.ac 
cd -
./speedbox/carrier/native.sdk-build.sh
vim /usr/include/c++/9/bits/hashtable_policy.h
cd -
./speedbox/carrier/native.sdk-build.sh
vim ./speedbox/carrier/native.sdk-build.sh
./speedbox/carrier/native.sdk-build.sh
exit
sudo apt install pkg-config
sudo apt-get install dpkg
dpkg -s package
aptitude show package
ls
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./debian/postinst 
cd debian/
ls
./preinst 
./preinst install
sudo ./preinst install
ls
./postinst 
ls
cd ../
ls
mkdir feedsd_1.2.0_amd64_ubuntu_2004
dpkg -X feedsd_1.2.0_amd64_ubuntu_2004.deb feedsd_1.2.0_amd64_ubuntu_2004/
ls
tree feedsd_1.2.0_amd64_ubuntu_2004
ls
vim CMakeLists.txt 
cd build/Linux/
ls
vim CPackConfig.cmake 
ls
cd ../
ls
grep cpack src/* -r
grep cpack src/* -ri
vim src/CMakeLists.txt 
ls
cd build/Linux/
ls
make package
ls
exit
ls
sudo apt-get install dpkg
sudo apt-get install pkg-config
ls
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
cd build/Linux/
ls
rm feedsd_1.2.0_amd64.deb
cat feedsd_1.2.0_amd64.deb.md5 
make package
ls
cd ../
ls
rm -rf Linux/
rm -rvf Linux/
ls
cd ../
ls
vim speedbox/carrier/native.sdk-build.sh 
uname -s
uname -a
lsblk 
lsbrelease
sudo apt install lsbrelease
sudo apt install lsb-core 
cat /etc/issue
cat /etc/os-release
uname -r
cat /etc/os-release
ls
./speedbox/carrier/native.sdk-build.sh 
ls
ls build/
rm -rf build/Linux-ubuntu-ubuntu/
./speedbox/carrier/native.sdk-build.sh 
ls build/
echo $NAME
a=$(source /etc/os-release && echo $NAME)
echo $a
echo $NAME
rm -r build/Linux-\"Ubuntu\"-\"18.04\"/
./speedbox/carrier/native.sdk-build.sh 
ls build/
./speedbox/carrier/native.sdk-build.sh 
ls /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz
rm /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz
./speedbox/carrier/native.sdk-build.sh 
cp build/Darwin/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz 
./speedbox/carrier/native.sdk-build.sh 
find build/Linux-Ubuntu-18.04/ -name libcjose-download
find build/Linux-Ubuntu-18.04/ -name libcjose-stamp
rm build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose-stamp
rm -r build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose-stamp/
./speedbox/carrier/native.sdk-build.sh 
rm -r build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose
./speedbox/carrier/native.sdk-build.sh 
rm /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz
./speedbox/carrier/native.sdk-build.sh 
vim /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
sudo apt install autoconf
m4 --version
vim /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
aclocal
vim /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/
ls
tar xf cjose-0.6.1.tar.gz 
ls
rm -r cjose-0.6.1
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose
ls
tar xf /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz
ls
cd -
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh 
df -h
tar
sudo apt upgrade tar
./speedbox/carrier/native.sdk-build.sh 
cmake -E tar
vim ./speedbox/carrier/native.sdk-build.sh 
export VERBOSE=1
./speedbox/carrier/native.sdk-build.sh 
tar xfz /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz
ls
rm -r cjose-0.6.1/
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/
ls
pwd
ls deps/
cd ../
ls
grep 
ls
grep xfz * -r
ls
vim Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
ls
exit
ls
sudo apt-get install pkg-config
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh 
ls build/
./speedbox/carrier/native.sdk-build.sh 
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs
ls
cmake -E tar xfz cjose-0.6.1.tar.gz 
cmake -E tar xf cjose-0.6.1.tar.gz 
cmake -v
cmake -h
cmake --version
bsdtar
sudo apt install bsdtar
sudo apt install libarchive-tools
cmake -E tar xf cjose-0.6.1.tar.gz 
cmake -E tar xf cjose-0.6.1.tar.gz  -h
cmake -h
cmake -h |grep verbose
cmake -h |grep verbose -i
cmake -E tar xf cjose-0.6.1.tar.gz  --log-level=VERBOSE
cmake -h |grep verbose -i
cmake -h
cmake --log-level=VERBOSE -E tar xf cjose-0.6.1.tar.gz
cmake --log-level=VERBOSE -E tar xfz cjose-0.6.1.tar.gz
cmake --log-level=VERBOSE -E tar cjose-0.6.1.tar.gz
mkdir /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/xf
cmake --log-level=VERBOSE -E tar xf cjose-0.6.1.tar.gz
cmake -E tar xf cjose-0.6.1.tar.gz
ls
cmake -E tar xf cjose-0.6.1.tar.gz
cmake -E tar xf libcrystal-v1.0.5.tar.gz 
find /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build -name cjose-0.6.1.tar.gz 
md5sum cjose-0.6.1.tar.gz 
ls cjose-0.6.1
rm -r cjose-0.6.1
cmake -E tar xf libcrystal-v1.0.5.tar.gz 
rm libcrystal-release-v1.0.5/
rm -r libcrystal-release-v1.0.5/
cmake -E tar xf cjose-0.6.1.tar.gz
ls
ls cjose-0.6.1
find /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build -name cjose-0.6.1.tar.gz 
cp /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Darwin/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz ./
cmake -E tar xf cjose-0.6.1.tar.gz
date
cmake -E tar xf cjose-0.6.1.tar.gz
cd ../../
ls
vim deps/cjose/CMakeLists.txt 
cat deps/cjose/CMakeLists.txt 
vim deps/cjose/CMakeLists.txt 
cd ../../../../
cd ../../../
./speedbox/carrier/native.sdk-build.sh 
vim /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
./speedbox/carrier/native.sdk-build.sh 
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/
ls
rm -r cjose-0.6.1
cmake -E tar xfz cjose-0.6.1.zip
cd -
rm -r /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/
./speedbox/carrier/native.sdk-build.sh 
find build/Linux-Ubuntu-20.04/ -name extract-libcjose.cmake
vim build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose-stamp/extract-libcjose.cmake
./speedbox/carrier/native.sdk-build.sh 
vim /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
./speedbox/carrier/native.sdk-build.sh 
vim /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
./speedbox/carrier/native.sdk-build.sh 
vim /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
./speedbox/carrier/native.sdk-build.sh 
ls /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose
rm -r /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/
./speedbox/carrier/native.sdk-build.sh 
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose
ls
rm -r /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose
./speedbox/carrier/native.sdk-build.sh 
cd -
./speedbox/carrier/native.sdk-build.sh 
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/
cd -
mkdir /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose
ls
cp ../../../../../../Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1/* ./
cp -r ../../../../../../Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1/* ./
cd -
./speedbox/carrier/native.sdk-build.sh 
sudo apt-get install libtool
cd -
ls
autoreconf --install --force
ls
tar xf ../../../../../../Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz 
ls
tar zxf ../../../../../../Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.tar.gz 
unzip ../../../../../../Elastos.DID.Native.SDK/build/.tarballs/cjose-0.6.1.zip 
cd -
./speedbox/carrier/native.sdk-build.sh 
cd -
ls
mv cjose-0.6.1/* ./
ls
cd -
./speedbox/carrier/native.sdk-build.sh 
sudo apt-get install libtool autotools-dev autoconf-archive
echo "Set disable_coredump false" >> /etc/sudo.conf
sudo echo "Set disable_coredump false" >> /etc/sudo.conf
sudo apt-get install libtool autotools-dev autoconf-archive man2html
./speedbox/carrier/native.sdk-build.sh 
sudo apt-get install libtool autotools-dev autoconf-archive man2html help2man
./speedbox/carrier/native.sdk-build.sh 
sudo apt-get install libtool autotools-dev autoconf-archive man2html help2man graphviz
./speedbox/carrier/native.sdk-build.sh 
cd -
ls
aclocal -I config -I m4
aclocal -I m4
ls
cd -
./speedbox/carrier/native.sdk-build.sh 
exit
df -h
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
rm -rf build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/
ls
./speedbox/carrier/native.sdk-build.sh 
find build/ -name libressl-2.9.2.tar.gz
cp build/Darwin-Unknown-0.0/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/libressl-2.9.2.tar.gz
cp build/Darwin-Unknown-0.0/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/libressl-2.9.2.tar.gz /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/build/.tarballs/libressl-2.9.2.tar.gz 
./speedbox/carrier/native.sdk-build.sh 
find . -name libcjose
cp -r ./build/Darwin-Unknown-0.0/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose ./build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/
./speedbox/carrier/native.sdk-build.sh 
sudo apt-get install pkg-config
./speedbox/carrier/native.sdk-build.sh 
ls
cd build/Linux-Ubuntu-20.04/
ls
make package
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh 
cp -r ./build/Darwin-Unknown-0.0/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose ./build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/
./speedbox/carrier/native.sdk-build.sh 
sudo apt-get install pkg-config
./speedbox/carrier/native.sdk-build.sh 
cmake -v
cmake --version
sudo apt install cmake
gcc -v
clang
./speedbox/carrier/native.sdk-build.sh 
gcc --version
./speedbox/carrier/native.sdk-build.sh 
ls
cat /etc/os-release 
cd build/Linux-Ubuntu-18.04/
make package
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh 
ls
cd build/Linux-Ubuntu-20.04/
make package
ls
rm -r deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/deps/cjose/
cd ../../
./speedbox/carrier/native.sdk-build.sh 
cd -
rm -r deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK/
cd -
./speedbox/carrier/native.sdk-build.sh 
cd -
rm -r build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/
./speedbox/carrier/native.sdk-build.sh 
rm -r build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK
./speedbox/carrier/native.sdk-build.sh 
locale -a
dpkg-reconfigure locales
sudo dpkg-reconfigure locales
sudo apt install locales
./speedbox/carrier/native.sdk-build.sh 
sudo apt install locales
sudo dpkg-reconfigure locales
locale -a
sudo dpkg-reconfigure locales
./speedbox/carrier/native.sdk-build.sh 
sudo dpkg-reconfigure locales
./speedbox/carrier/native.sdk-build.sh 
locale -a
update-locale LANG=en_GB.utf8
sudo update-locale LANG=en_GB.utf8
locale -a
./speedbox/carrier/native.sdk-build.sh 
sudo dpkg-reconfigure locales
./speedbox/carrier/native.sdk-build.sh 
locale -a
sudo dpkg-reconfigure locales
sudo update-locale LANG=en_GB.utf8
cp -r ./build/Darwin-Unknown-0.0/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose ./build/Linux-Ubuntu-18.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/
./speedbox/carrier/native.sdk-build.sh 
cp -r ./build/Darwin-Unknown-0.0/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose ./build/Linux-Ubuntu-20.04/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/
./speedbox/carrier/native.sdk-build.sh 
sudo apt-get install pkg-config
./speedbox/carrier/native.sdk-build.sh 
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
c++
c++ main.cpp 
./a.out 
./speedbox/carrier/native.sdk-build.sh 
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
./speedbox/carrier/native.sdk-build.sh 
vim main.cpp 
c++ main.cpp 
vim main.cpp 
c++ main.cpp 
./a.out 
./speedbox/carrier/native.sdk-build.sh 
vim main.cpp 
./speedbox/carrier/native.sdk-build.sh 
c++ main.cpp 
vim main.cpp 
c++ main.cpp 
./a.out 
./speedbox/carrier/native.sdk-build.sh 
vim /usr/include/c++/7/bits/shared_ptr.h
cat /usr/include/c++/7/bits/shared_ptr.h |less
./speedbox/carrier/native.sdk-build.sh 
vim /usr/include/c++/7/bits/shared_ptr.h
./speedbox/carrier/native.sdk-build.sh 
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
./speedbox/carrier/native.sdk-build.sh 
cd build/Linux-Ubuntu-20.04/
ls
rm feedsd_1.2.0_amd64.deb
make package
ifconfig |grep inet
ls
dpkg -i feedsd_1.2.0_amd64.deb
sudo dpkg -i feedsd_1.2.0_amd64.deb
ps aux |grep feed
ps aux |grep feedsd
service feedsd start
sudo service feedsd start
ps aux |grep feedsd
sudo service feedsd start
ifconfig
sudo service feedsd start
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
sudo service feedsd start
cd build/Linux-Ubuntu-20.04/
sudo dpkg -i feedsd_1.2.0_amd64.deb
sudo service feedsd start
ifconfig
sudo service feedsd start
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
./speedbox/carrier/native.sdk-build.sh 
exit
ls
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh 
ls
rm build/Linux-Ubuntu-20.04/feedsd_1.2.0_amd64.deb*
rm build/Linux-Ubuntu-18.04/feedsd_0.1.1_amd64.deb*
make package
cat /etc/os-release 
cd build/Linux-Ubuntu-20.04/
ls
make package
ls
ll
cp feedsd_1.3.0_amd64.deb* ../../package/
cd ../../package/
ls
mv feedsd_1.3.0_armhf.deb feedsd_1.3.0_armhf_raspbian.deb
mv feedsd_1.3.0_armhf.deb.md5 feedsd_1.3.0_armhf_raspbian.deb.md5
mv feedsd_1.3.0_amd64.deb feedsd_1.3.0_amd64_ubuntu_2004.deb
mv feedsd_1.3.0_amd64.deb.md5 feedsd_1.3.0_amd64_ubuntu_2004.deb.md5
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
./speedbox/carrier/native.sdk-build.sh 
sudo apt-get install pkg-config
./speedbox/carrier/native.sdk-build.sh 
cd build/Linux-Ubuntu-18.04/
ls
make package
ls
mv feedsd_0.1.1_amd64.deb* ../../package/
cd ../../package/
ls
mv feedsd_0.1.1_amd64.deb*
cd -
ls
git tree
ls
vim src/CMakeFiles/
vim ../../src/CMakeLists.txt 
make package
vim ../../src/CMakeLists.txt 
ls
rm feedsd_0.1.1_amd64.deb*
make package
rm feedsd_PROJECT_VERSION_amd64.deb*
vim ../../src/CMakeLists.txt 
make package
git status
git add -u
git tr
git tree
git commit -m "CU-4qp240 fix package version on Ubuntu-18.04."
git status
ls
mv feedsd_1.3.0_amd64.deb* ../../package/
cd ../../package/
ls
rm feedsd_0.1.1_amd64.deb.md5 
ls
mv feedsd_1.3.0_amd64.deb feedsd_1.3.0_amd64_ubuntu_1804.deb
mv feedsd_1.3.0_amd64.deb.md5 feedsd_1.3.0_amd64_ubuntu_1804.deb.md5
ls
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
cd package/
ls
cat /etc/os-release 
dpkg
dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
sudo dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
sudo dpkg --remove --force-remove-reinstreq feedsd
export RUNLEVEL=1
sudo dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
man dpkg
sudo dpkg -if feedsd_1.3.0_amd64_ubuntu_1804.deb
dpkg -help
dpkg -h
dpkg --help
dpkg --force-help
sudo dpkg -i --force-all feedsd_1.3.0_amd64_ubuntu_1804.deb
ps aux |grep feed
RUNLEVEL=1 sudo dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
cd package/
sudo dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
vim /usr/sbin/policy-rc.d 
vim /usr/sbin/invoke-rc.d 
deb-system-helper
sudo apt install deb-system-helper
sudo apt install init-system-helper
sudo apt install deb-system-helpers
sudo apt install init-system-helpers
deb-systemd-helper 
deb-system-helper
deb-systemd-helper
deb-systemd-helper --quiet was-enabled feedsd.service
invoke-rc.d feedsd start
which invoke-rc.d feedsd start
vim /usr/sbin/invoke-rc.d
/sbin/runlevel
sudo apt install runlevel
apt-get install rcconf
sudo apt-get install rcconf
runlevel
sudo apt install systemd-sysv
sudo apt install upstart
sudo apt install sysvinit-core
sudo apt install systemd-sysv
sudo dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
runlevel 
/sbin/runlevel 
systemctl get-default
env DEFAULT_RUNLEVEL=2
/sbin/runlevel 
sudo dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
sudo vim /etc/init/rc-sysinit.conf
sudo echo "env DEFAULT_RUNLEVEL=2" > /etc/init/rc-sysinit.conf
sudo touch /etc/init/rc-sysinit.conf
ls /lib/systemd/system/default.target
cat /lib/systemd/system/default.target
runlevel -list
runlevel --list
RUNLEVELHELPER=1 sudo dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
vim /usr/sbin/invoke-rc.d
cat /usr/sbin/invoke-rc.d |less
systemctl is-active --quiet sysinit.target
sudo systemctl is-active --quiet sysinit.target
RUNLEVELHELPER=1 sudo dpkg -i feedsd_1.3.0_amd64_ubuntu_1804.deb
exit
ls
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh 
exit
cd git/elastos/FileCoin/
ls
cd wallet/
ls
npm start
apt install npm
npm start
npm update
ls
cd ../
ls
cd filecoin-signing-tools/
ls
cargo build --target aarch64-linux-android --release
export PATH=$PATH:/root/.cargo/bin
cargo build 
ls
cd signer
cargo build
ls
ls utils/
ls utils/generate.rs 
vim utils/generate.rs 
ls
ls src/
ls tests/
vim Cargo.toml 
ls
vim Cargo.toml 
cd ../
ls
cd ../
ls
cd Elastos.SDK.Keypair.C
ls
git status
git diff
git status
cd config/
git status
git diff
git checkout -- scripts/build-cpp-filecoin.sh 
ls
cp scripts/build-filecoin-ffi.sh scripts/build-filecoin-signing-tools.sh
ls
cd ../
ls
./scripts/build.sh --with-filecoin -tg
rm -r build/Linux/x86_64/filecoin-signing-tools-v0.11.0/.configured 
./scripts/build.sh --with-filecoin -tg
rm -r build/Linux/x86_64/filecoin-signing-tools-v0.11.0/.configured 
./scripts/build.sh --with-filecoin -tg
rustup install nightly
./scripts/build.sh --with-filecoin -tg
rm -r build/Linux/x86_64/filecoin-signing-tools-v0.11.0/.configured 
./scripts/build.sh --with-filecoin -tg
cbindgen
cbindgen -h
./scripts/build.sh --with-filecoin -tg
exit
cmake =v
cmake -v
ls
cmaek
cmake
cmake -version
exit
cmake -version
exit
ls
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh
alocal
autoconf
aclocal
aclocal -v
aclocal --version
autoconf --version
./speedbox/carrier/native.sdk-build.sh
rm -r build/macos/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose
rm -r build/Linux-Ubuntu-18.04-Release/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose
./speedbox/carrier/native.sdk-build.sh
locale -a
dpkg-reconfigure locales
sudo dpkg-reconfigure locales
locale -a
update-locale
sudo dpkg-reconfigure locales
rm -r build/Linux-Ubuntu-18.04-Release/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose
cd build/Linux-Ubuntu-18.04-Release/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/
ls
make 
aptitude -y install locales
sudo apt install locales
sudo dpkg-reconfigure locales
make 
locale -a
update-locale LANG=en_GB.utf8
sudo update-locale LANG=en_GB.utf8
make 
ls
vim ../Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
make
vim ../Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
make
vim ../Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
make
vim ../Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
make
vim ../Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
make
vim ../Elastos.DID.Native.SDK/deps/cjose/CMakeLists.txt 
exit
ls
ls /opt/
ls /opt/workspace/
ls
cd git/elastos/Elastos.NET.Carrier/
ls
ls Feeds/feeds-service
ls
find . -name feeds-service
cd ~
find . -name feeds-service
ls
ls Projects/
ls android/
ls
cd /
ls
cd /opt/workspace/
ls
cd ../
ls
cd ~
ls
pwd
cp mkdir feeds-service
mkdir feeds-service
cd feeds-service/
cp -r /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service/.git ./
cd /opt/workspace/git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh
exit
cd git/elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh
cd ../
cd ../../
ls
cd ../
ls
rm -r ooo/
cd misc/
ls
cd rcdiscover/
ls
make package
mkdir build
cd build/
cmake ../
make package
ls
dpkg -i rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
sudo dpkg -i rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
sudo dpkg-reconfigure rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
sudo dpkg -i rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
sudo dpkg-reconfigure rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
sudo dpkg-preconfigure rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
apt install apt-utils
sudo apt install apt-utils
sudo dpkg-preconfigure rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
sudo dpkg -i rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
which rcdiscover-cli
rcdiscover-cli
sudo dpkg -i rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
ls
ls ../
vim ../debian/
make package
sudo dpkg -i rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
sudo dpkg-reconfigure rcdiscover
vim ../debian/templates.in 
make package
sudo dpkg-reconfigure rcdiscover
make package
sudo dpkg -i rcdiscover_1.0.5-0+20201130+102229_amd64.deb 
rcdiscover
cd ../../
ls
cd ../
ls
cd elastos/Elastos.NET.Carrier/Feeds/feeds-service
ls
./speedbox/carrier/native.sdk-build.sh 
cp -r build/Darwin-Unknown-0.0-Release/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose build/Linux-Ubuntu-18.04-Release/deps/Elastos.DID.Native.SDK/external/src/Elastos.DID.Native.SDK-build/deps/cjose/external/src/libcjose
./speedbox/carrier/native.sdk-build.sh 
exit
