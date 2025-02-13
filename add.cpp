#include <pybind11/pybind11.h>

float cpp_add(float arg1, float arg2) {
    float return_val = arg1 + arg2;
    return return_val;
}

PYBIND11_MODULE(python_cpp_debug, handle) {
    handle.doc() = "This is documentation";
    handle.def("cpp_add", &cpp_add);
}