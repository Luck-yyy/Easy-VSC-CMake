#pragma once

#ifdef _WIN32
//#define DLL_EXP _declspec(dllexport)
#define DLL_EXP __attribute__((dllexport))

#elif __linux__
#define DLL_EXP __attribute__ ((visibility("default")))
#endif // _WIN32

#include <iostream>
#include <string>
