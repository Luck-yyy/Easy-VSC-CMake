#声明 项目名称+版本+语言(CXX)
project(Cooperate_EXE VERSION 1.0.0 LANGUAGES CXX)

include_directories (${PROJECT_SOURCE_DIR}/include)

#将源文件添加至SRC_LIST
aux_source_directory (src SRC_LIST)

#定义可执行文件Seperate_EXE，属性为SRC_LIST
add_executable(Cooperate_EXE ${SRC_LIST})

# 指定静态库的路径
link_directories(${PROJECT_SOURCE_DIR}/External_Libraries/LIB)
 
# 链接静态库
target_link_libraries(Cooperate_EXE ColorDealing ScriptDealing)

#指定可执行程序输出路径
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/Cooperate_EXE/bin)