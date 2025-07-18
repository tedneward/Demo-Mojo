# Simple python program to test interop with Mojo.
# This file is imported from hello.mojo.

import check_mod

check_mod.install_if_missing("numpy")
import numpy as np


def test_interop_func() -> None:
    print("Hello from Python!")
    a = np.array([1, 2, 3])
    print("I can even print a numpy array: ", a)

if __name__ == "__main__":
    from timeit import timeit

    print(timeit(lambda: test_interop_func(), number=1))
