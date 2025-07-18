# This sample demonstrates some basic Mojo
# range() and print() functions available in the standard library.
# It also demonstrates Python interop by importing the simple_interop.py file.

from python import Python

def main():
    print("Hello Mojo 🔥!")
    for x in range(9, 0, -3):
        print(x)
    var test_module = Python.import_module("simple_interop")
    test_module.test_interop_func()
