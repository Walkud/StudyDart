///级联操作符  严格意义上来说，级联操作符(..)并不是操作符，只是Dart的语法
///https://www.dartlang.org/guides/language/language-tour#cascade-notation-
main() {
  var sb = StringBuffer();
//  sb.write('foo')//write返回类型为void
//    ..write('bar'); //编译错误，void 类型不能作为级联对象

  ////使用级联操作符正确的姿势
  sb..write("Dart2 ")
    ..write("Flutter ")
    ..write("Android ")
    ..write("Java ")
    ..write("So ")
    ..write("Easy!");

  print(sb.toString()); //打印：Dart2 Flutter Android Java So Easy!

  //使用级联操作符后，函数返回值会被忽略。
  var cascadeNotation = new CascadeNotation()
    ..name.toUpperCase().substring(0, 1)
    ..name;
  print(cascadeNotation.runtimeType); //打印：CascadeNotation
}

class CascadeNotation {
  String name = "Dart";
}
