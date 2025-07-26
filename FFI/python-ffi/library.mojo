from python import PythonObject
from python.bindings import PythonModuleBuilder
from os import abort

# An interface for this Mojo module must be exported to Python.
@export
fn PyInit_hello_mojo() -> PythonObject:
    try:
        # A Python module is constructed, matching the name of this Mojo module.
        var module = PythonModuleBuilder("hello_mojo")
        # The functions to be exported are registered within this module.
        module.def_function[passthrough]("passthrough")
        return module.finalize()
    except e:
        return abort[PythonObject](
            String("failed to create Python module: ", e)
        )

fn passthrough(value: PythonObject) raises -> PythonObject:
    """A very basic function illustrating passing values to and from Mojo."""
    return value + " world from Mojo"
