# 顶层

cmake_minimum_required(VERSION 4.1.1)

project(Easy-VSC-CMake)

#添加存放源文件的子目录
add_subdirectory(Seperate_EXE)

add_subdirectory(Cooperate_DLL)

add_subdirectory(Cooperate_EXE)