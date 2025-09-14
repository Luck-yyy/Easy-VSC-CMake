#pragma once

#include "ColorCommonDefine.h"

namespace ColorDealing
{
    class ColorInterface
    {
    public:
        //virtual ~ColorInterface() = default;

        //virtual void SetColor(const std::string& color) = 0;
        //virtual std::string GetColor() const = 0;

        DLL_EXP std::string GetDescribe();
    };
}