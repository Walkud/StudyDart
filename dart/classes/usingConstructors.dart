import 'dart:math';

///使用构造器
///https://www.dartlang.org/guides/language/language-tour#using-class-members
main() {
  //Dart2 这里可以 new 关键字
  var p1 = Point(2, 2);
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
