:: 删除build文件夹，“/S”表示递归删除，“/Q” 表示静默，可通过在cmd下执行“help rmdir”查看参数具体功能
rmdir /S /Q build
mkdir build
cd build
 
:: -G后面指定具体的生成器类型，MinGW表示windows，Unix表示unix或linux环境下的生成器。
:: 有关生成器详细参见手册：  https://cmake.org/cmake/help/latest/manual/cmake-generators.7.html#manual:cmake-generators(7)
:: DCMAKE_C_COMPILER表示C代码的编译工具，DCMAKE_CXX_COMPILER表示C++代码的编译工具；
:: “..”表示到上一级目录寻找"CMakeLists.txt"，等同于“../”。

cmake -G "MinGW Makefiles" -DCMAKE_CXX_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ ..
 
:: 在cmake生成了makefile文件，并指定了C/C++源码编译工具后，使用make命令编译makefile定义的工程。
make
 
pause
