# Easy-VSC-CMake
教学性质的VSCode+CMake使用工具

# 项目架构
Generator.bat   Makefiles文件生成脚本，MinGW，GXX

CMakeLists.txt  版本+总项目名+子项目包含

Seperate_EXE 单独EXE生成项目，不含外部文件

Cooperate_DLL   dll相关项目文件夹
    ColorDealing    颜色相关
    ScriptDealing   文字相关
    CMakeLists.txt  中间层cm配置

Cooperate_EXE   调用外部dll，执行文件
    External_Libraries\LIB  .all.a文件目录
    include                 .h文件
    src                     源码
    CMakeLists.txt

# 注意
1 所有生成文件放build，且build自动生成不在Github管理
2 Cooperate_EXE所需外部文件除.dll自动拷贝至bin，需手动复制
    保持输出整洁 + 生成顺序管理困难 + 外部文件接口变动小无需时刻替换