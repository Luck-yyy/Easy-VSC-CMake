#include <iostream>

#include "ColorInterface.h"
#include "ScriptInterface.h"

int main() {
    //颜色接口
    ColorDealing::ColorInterface* colorInterface = nullptr;
    
    // Assuming there's a derived class that implements ColorInterface
    colorInterface = new ColorDealing::ColorInterface;

    if (colorInterface) {
        //colorInterface->SetColor("Red");
        //std::cout << "Color: " << colorInterface->GetColor() << std::endl;
        std::cout << "Description: " << colorInterface->GetDescribe() << std::endl;

        delete colorInterface;
    } else {
        std::cout << "ColorInterface implementation is not provided." << std::endl;
    }

    //文本接口
    ScriptDealing::ScriptInterface* ScriptInterface = nullptr;
    
    ScriptInterface = new ScriptDealing::ScriptInterface;

    if (ScriptInterface) {
        std::cout << "Description: " << ScriptInterface->GetDescribe() << std::endl;

        delete ScriptInterface;
    } else {
        std::cout << "ScriptInterface implementation is not provided." << std::endl;
    }

    system("pause");

    return 0;
}