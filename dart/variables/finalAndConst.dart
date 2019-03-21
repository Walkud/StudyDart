///当声明一个变量时，不打算改变它的值，你可以使用 final 和 const 去替代 var 和 明确的类型
///https://www.dartlang.org/guides/language/language-tour#default-value
/// final 只允许设置一次值
/// const 声明的是一个编译时常量
main() {
  final name = 'Dart';
//  name = "Dart2";//编译时错误，只允许设置一次值
  final String nickname = 'Dart'; //final 后也可以指明类型

  constKeyWord();
}

///const 关键字
constKeyWord() {
//  const val;//编译时错误，const必须在声明时初始化值
  const num = 4; // 声明一个编译时常量
  const double atm = 1.01325 * num; //声明时可以使用另一个 const 声明的引用

  var foo = const []; //声明一个不变的集合
  final bar = const []; //声明一个不变的集合，同时赋值给一个不变的bar
  const baz = []; // 相当于 `const []`

  print(foo);

//  foo.add(1);//向不变的集合中添加了元素，会抛出异常

//  bar = foo;//编译时错误，bar 为 final，只能赋值一次

//  baz.add(1);//会抛出异常，const baz = []  相当于 const []
}
