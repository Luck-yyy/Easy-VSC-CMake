:: ɾ��build�ļ��У���/S����ʾ�ݹ�ɾ������/Q�� ��ʾ��Ĭ����ͨ����cmd��ִ�С�help rmdir���鿴�������幦��
rmdir /S /Q build
mkdir build
cd build
 
:: -G����ָ����������������ͣ�MinGW��ʾwindows��Unix��ʾunix��linux�����µ���������
:: �й���������ϸ�μ��ֲ᣺  https://cmake.org/cmake/help/latest/manual/cmake-generators.7.html#manual:cmake-generators(7)
:: DCMAKE_C_COMPILER��ʾC����ı��빤�ߣ�DCMAKE_CXX_COMPILER��ʾC++����ı��빤�ߣ�
:: ��..����ʾ����һ��Ŀ¼Ѱ��"CMakeLists.txt"����ͬ�ڡ�../����

cmake -G "MinGW Makefiles" -DCMAKE_CXX_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ ..
 
:: ��cmake������makefile�ļ�����ָ����C/C++Դ����빤�ߺ�ʹ��make�������makefile����Ĺ��̡�
make
 
pause
