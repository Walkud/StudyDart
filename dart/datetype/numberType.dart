///Dart 为数值类型提供了 int 、 double 、 num 类型，这几种类型不允许被继承的。
///https://www.dartlang.org/guides/language/language-tour#numbers
///int 和 double 是 num 的子类型
main() {
  //Dart中数值是num，它有两个子类型：int 和 double
  //int是任意长度的整数，double是双精度浮点数
  var hex = 0xFF;
  int _int = 0xFF;
  num _num = 0xFF;
  double _double = 0xF;

  //转换进制
  print("整型转换为16进制：$hex —> 0x${hex.toRadixString(16).toUpperCase()}");
  print("_int:$_int，_num:$_num,_double:$_double");//打印:_int:255，_num:255,_double:15.0
}