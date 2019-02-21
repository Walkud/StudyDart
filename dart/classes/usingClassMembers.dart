import 'dart:math';

///对象有成员由函数和数据(分别为方法和示例变量)组成，可以通过对象示例进行访问
///使用(.)进行访问
///https://www.dartlang.org/guides/language/language-tour#using-class-members
main() {
  //创建Point对象实例
  var p = Point(2, 2);

  //使用.访问 p 实例的 y 实例变量
  assert(p.y == 2);

  //使用.访问 p 实例 distanceTo
  print(p.distanceTo(Point(3, 4)));

  //使用实例 p + ? 可以防止空指针异常
  print(p?.x);
}
