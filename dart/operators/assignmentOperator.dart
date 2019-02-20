///赋值操作符
///https://www.dartlang.org/guides/language/language-tour#assignment-operators
///   =	 –=	 /=	 %= 	>>= 	^=  +=	 *=	 ~/=	<<=	 &= 	|=
///                         复合赋值操作符    拆分赋值操作符
///   For an operator op:	  a op= b	         a = a op b
///   Example:              a += b	         a = a + b
main() {
  double a = 3; //  =
  a -= 1; //  -=    拆分：a = a - 1
  a /= 2; //  /=    拆分：a = a / 2
  a %= 2; //  %=    拆分：a = a % 2

  int b = 3;
  b >>= 2; //   >>=   拆分：b = b >> 2
  b ^= 2; //   ^=    拆分：a = a ^ 2
  b += 2; //  +=     拆分：b = b + 2
  b *= 2; //  *=     拆分：b = b * 2
  b ~/= 2; //  ~/=    拆分：b = b ~/ 2
  b <<= 2; //  <<=    拆分：b = b << 2
  b &= 2; //   &=     拆分：b = b & 2
  b |= 2; //  |=      拆分：b = b | 2

  print(a);
  print(b);
}
