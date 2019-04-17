///赋值操作符
///https://www.dartlang.org/guides/language/language-tour#assignment-operators
///   =	 –=	 /=	 %= 	>>= 	^=  +=	 *=	 ~/=	<<=	 &= 	|=
///                         复合赋值操作符    拆分赋值操作符
///   For an operator op:	  a op= b	         a = a op b
///   Example:              a += b	         a = a + b
main() {
  double a = 3; //  =
  a -= 1; //  -=    拆分：a = a - 1
  print(a);//打印：2.0

  a /= 2; //  /=    拆分：a = a / 2
  print(a);//打印：1.0

  a %= 2; //  %=    拆分：a = a % 2
  print(a);//打印：1.0

  int b = 3;
  b >>= 2; //   >>=   拆分：b = b >> 2
  print(b);//打印：0

  b ^= 2; //   ^=    拆分：a = a ^ 2
  print(b);//打印：2

  b += 2; //  +=     拆分：b = b + 2
  print(b);//打印：4

  b *= 2; //  *=     拆分：b = b * 2
  print(b);//打印：8

  b ~/= 2; //  ~/=    拆分：b = b ~/ 2
  print(b);//打印：4

  b <<= 2; //  <<=    拆分：b = b << 2
  print(b);//打印：16

  b &= 2; //   &=     拆分：b = b & 2
  print(b);//打印：0

  b |= 2; //  |=      拆分：b = b | 2
  print(b);//打印：2
}
