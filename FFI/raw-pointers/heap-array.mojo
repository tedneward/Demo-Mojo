from memory import UnsafePointer

struct HeapArray:
    var data: UnsafePointer[Int]
    var size: Int
    var cap: Int



    fn __init__(mut self):
        self.cap = 16
        self.size = 0
        self.data = UnsafePointer[Int].alloc(self.cap)

    fn __init__(mut self, size: Int, val: Int):
        self.cap = size * 2
        self.size = size
        self.data = UnsafePointer[Int].alloc(self.cap)
        for i in range(self.size):
            self.data[i] = val #.store(i, val)
     
    fn __del__(owned self):
        self.data.free()

    fn dump(self):
        print("[")
        for i in range(self.size):
            if i > 0:
                print(", ")
            print(self.data[i])
        print("]")

def main():
    var ha = HeapArray(4, 4)
    ha.dump()
