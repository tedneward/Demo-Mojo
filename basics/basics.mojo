# Showing off the basics of Mojo


def def_function():
    print("This is a def function")

fn fn_function():
    print("This is a fn function")

def using_uninitialized_variable():
    var x : String

    print("Hello, Mojo" + x)

def main():
    print("Hello, Mojo")
    def_function()
    fn_function()
    using_uninitialized_variable()
