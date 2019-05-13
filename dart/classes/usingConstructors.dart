import 'dart:math';

///使用构造器
///你可以创建一个类的构造器，用 ClassName 作为构造器名称，Dart 也支持自定义构造器名称，用 ClassName.identifier 作为构自定义造器名称，可以有效的解决重载构造器时容易搞混的问题。
///https://www.dartlang.org/guides/language/language-tour#using-class-members
main() {
  //Dart2 这里可以省略 new 关键字
  var p1 = Point(2, 2);
//  var p1 = new Point(2, 2);//创建对象可以加 new 关键字
  print(p1);

  //对于提供不变的构造器（constant constructors）可以使用const 构造相同的实例，但必须要保证对比的数据一致
  var p2 = const Point(2, 2);
  var p3 = const Point(2, 2);

  print(identical(p2, p3)); //p2和p3为相同的实例，打印true

  //一个使用const 关键字 和 一个未使用 const关键字的实例 是不相同的
  var p4 = const Point(1, 1);
  var p5 = Point(1, 1);

  print(identical(p4, p5)); //打印 false
}
