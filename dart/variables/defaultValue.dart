///因为 Dart 中未初始化的变量默认值为 null，数值类型也是对象 ，所以数值类型未初始化时也为 null。
///https://www.dartlang.org/guides/language/language-tour#default-value
main(){

  int value;//未初始化，默认值为null
  print(value);//打印：null

}