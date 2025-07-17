from gpu.host import Dim
from gpu.id import block_idx, thread_idx
from max.driver import Accelerator, Device, accelerator, cpu
from sys import exit, has_accelerator

def main():
    if not has_accelerator():
        print("A GPU is required to run this program")
        exit()

    host_device = gpu.host.DeviceContext(api="cpu")
    print("Found the CPU device")
    gpu_device = gpu.host.DeviceContext()
    print("Found the GPU device")
    