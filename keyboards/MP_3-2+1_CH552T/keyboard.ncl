let { DirectPinKey, PhysicalEncoder, .. } = import "fak/keyboard.ncl" in
let { CH552T, .. } = import "fak/mcus.ncl" in

{
  mcu = CH552T,
  usb_dev = {
    vendor_id = 51966,  # 0xCAFE
    product_id = 47806, # 0xBABE
    product_ver = 256,  # 0x0100
  },
  encoders = [
    PhysicalEncoder 14 32 4,
  ],
  keys =
    let D = DirectPinKey in
    [
        D 35, D 34, D 33,
        D 30, D 31, D 17,
    ]
}