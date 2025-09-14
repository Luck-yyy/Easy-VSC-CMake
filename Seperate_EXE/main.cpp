#include <iostream>

#include "CommonTool.h"

int main() {
    int a = 5;
    int b = 10;
    int c = CommonTool::Y_ADD(a, b);

    std::cout<<c<<std::endl;

    system("pause");

    return 0;
}