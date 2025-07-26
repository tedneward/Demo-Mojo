from python import Python

def main():
    print("Hello Mojo 🔥!")

    for x in range(9, 0, -3):
        print(x)

    var test_module = Python.import_module("library")
    test_module.test_interop_func()

