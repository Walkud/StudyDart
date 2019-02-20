///位和位移运算操作符
///https://www.dartlang.org/guides/language/language-tour#bitwise-and-shift-operators
///
///   &	  AND 与
///   |	  OR  或
///   ^	  XOR 异或
///   ~expr	  Unary bitwise complement (0s become 1s; 1s become 0s) 一元位补码
///   <<	  Shift left  左位移
///   >>	  Shift right 右位移
main(){

  //这段代码Copy自官网
  final value = 0x22;
  final bitmask = 0x0f;

//  assert((value & bitmask) == 0x02); // AND
//  assert((value & ~bitmask) == 0x20); // AND NOT
//  assert((value | bitmask) == 0x2f); // OR
//  assert((value ^ bitmask) == 0x2d); // XOR
//  assert((value << 4) == 0x220); // Shift left
//  assert((value >> 4) == 0x02); // Shift right

  //Copy End Line

  print((bitmask).toRadixString(2));

  //一元位补码2进制打印
  print(value.toRadixString(2));//                100010
  print((~bitmask).toRadixString(2));//-10000     110000
  print((value & ~bitmask).toRadixString(2));//   100000

}