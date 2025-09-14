#声明 项目名称+版本+语言(CXX)
project(ScriptDealing VERSION 1.0.0 LANGUAGES CXX)

#将源文件添加至SRC_LIST
aux_source_directory (. SRC_LIST)

# 生成静态库
add_library(ScriptDealing SHARED ${SRC_LIST})

MESSAGE(STATUS "--PROJECT_SOURCE_DIR值为: ${PROJECT_SOURCE_DIR}")
MESSAGE(STATUS "--CMAKE_BINARY_DIR值为: ${CMAKE_BINARY_DIR}")

# 设置库的输出目录（可选）
set_target_properties(ScriptDealing PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/Cooperate_EXE/bin/"
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/Cooperate_EXE/lib/"
)

# 复制头文件
file(COPY 
    ${PROJECT_SOURCE_DIR}/ScriptInterface.h
    ${PROJECT_SOURCE_DIR}/ScriptCommonDefine.h
    DESTINATION ${CMAKE_BINARY_DIR}/Cooperate_EXE/include/
)
