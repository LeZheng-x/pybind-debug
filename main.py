import python_cpp_debug


if __name__ == "__main__":

    x = 5
    y = 6
    print(f"Adding {x} and {y} together.")
    z = python_cpp_debug.cpp_add(x, y)
    print(f"Result is {z}")