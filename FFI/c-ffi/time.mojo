# Warning: This does not currently compile/exec (as of 17 July 2025)
# Warnings on @value, Pointer constructor
# Error on pop.external_call[]

@value
@register_passable("trivial")
struct C_tm:
    var tm_sec: Int
    var tm_min: Int
    var tm_hour: Int
    var tm_mday: Int
    var tm_mon: Int
    var tm_year: Int
    var tm_wday: Int
    var tm_yday: Int
    var tm_isdst: Int


def main():
    var rawTime : Int
    var rawTimePtr = Pointer[Int].address_of(rawTime)
    __mlir_op.`pop.external_call`[
            func = "time".value,
            _type= None,
        ](rawTimePtr)

    var tm = __mlir_op.`pop.external_call`[
            func : "gmtime".value,
            _type: Pointer[C_tm],
        ](rawTimePtr).load()

    print(tm.tm_hour, ":", tm.tm_min, ":", tm.tm_sec)
