///级联操作符  严格意义上来说，级联操作符(..)并不是操作符，只是Dart的语法
///https://www.dartlang.org/guides/language/language-tour#cascade-notation-
main() {

  var sb = StringBuffer();
//  sb.write('foo')//write返回类型为void
//    ..write('bar'); // Error: method 'write' isn't defined for 'void'.

  ////使用级联操作符时，在第一个调用的方法或字段上就必须使用..
  sb..write("Dart2 ")
  ..write("Flutter ")
  ..write("Android ")
  ..write("Java ")
  ..write("So ")
  ..write("Easy!");

  print(sb.toString());


}
