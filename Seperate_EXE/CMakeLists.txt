
#声明 项目名称+版本+语言(CXX)
project(Seperate_EXE VERSION 1.0.0 LANGUAGES CXX)

#将源文件添加至SRC_LIST
aux_source_directory (. SRC_LIST)

#定义可执行文件Seperate_EXE，属性为SRC_LIST
add_executable(Seperate_EXE ${SRC_LIST})

#指定可执行程序输出路径
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/Seperate_EXE/bin)