import os
import sys

# The Mojo importer module will handle compilation of the Mojo files.
import max.mojo.importer  # noqa: F401

current_dir = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, current_dir)

# Importing our Mojo module, defined in the `hello_mojo.mojo` file.
import hello_mojo  # type: ignore

if __name__ == "__main__":
    # Calling into a Mojo `passthrough` function from Python:
    result = hello_mojo.passthrough("Hello")
    print(result)
    