///当声明一个变量时，不打算改变它的值，你可以使用 final 和 const 去替代 var 和 明确的类型。
///https://www.dartlang.org/guides/language/language-tour#final-and-const
/// final 只允许设置一次值
/// const 声明的是一个编译时常量
/// 区别：
///   a. final 可以声明实例变量，const 不能声明实例变量，必须要加上 static 关键字
///   b. const 定义的是编译时常量，只能用编译时常量来初始化，final 定义的常量可以用变量来初始化
main() {
  final name = 'Dart';
//  name = "Dart2";//编译时错误，只允许设置一次值
  final String nickname = 'Dart'; //final 后也可以指明类型

  //  const val;//编译时错误，const必须在声明时初始化值
  const num = 4; // 声明一个编译时常量
  const double atm = 1.01325 * num; //声明时可以使用另一个 const 声明的引用

  var foo = const []; //声明一个不变的集合
  final bar = const []; //声明一个不变的集合，同时赋值给一个不变的bar
  const baz = []; // 相当于 `const []`

  print(foo);//打印:[]

  foo = [1, 2, 3]; // 由于变量 foo 未使用 final 或 const 所以这里可以再次为foo赋值
  print(foo);//打印:[1, 2, 3]

//  foo.add(1);//向不变的集合中添加了元素，会抛出异常
//  bar = foo;//编译时错误，bar 为 final，只能赋值一次
//  baz.add(1);//会抛出异常，const baz = []  相当于 const []

  //区别
//  const err1 = name;//报错，const 只能使用常量来初始化，如 1 ，2.0 ，3等等
  final aa  = name;//final 定义的常量可以用变量来初始化
}

///区别
class FinalAndConst{
//  const cc = 1;//不能用来声明实例变量
  final ff = 2;//可以用来声明实例变量
}

