#include <Python.h>

int main(int argc, char* argv[])
{
    Py_Initialize();
    PyRun_SimpleString("print('TEST PASSED')");
    Py_Finalize();
    
    return 0;
}
