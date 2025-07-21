from gpu.host import Dim
from gpu.host import DeviceContext
from gpu.id import block_idx, thread_idx
from sys import exit, has_accelerator

def main():
    if not has_accelerator():
        print("A GPU is required to run this program")
        exit()

    host_device = DeviceContext(api="cpu")
    print("Found the CPU device")

    gpu_device = DeviceContext()
    print("Found the GPU device")

