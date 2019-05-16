///在方法上使用泛型
///https://www.dartlang.org/guides/language/language-tour#using-generic-methods
///方法使用泛型的地方：
///1、在方法的返回类型上(T),测试中发现这个可以省略，但在进行错误的赋值时编译器不会报错，但在运行时会报错
///2、在一个参数的类型上(List<T>)
///3、在局部变量类型上(T)
///4、在方法名上(如：first<T>)
main() {
  var list = <String>["A", "B", "C"];
  print(first(list));//打印：A
  print(last(list));//打印：C
}

///参考官方,取集合中的第一个元素
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}

///取集合中的最后一个元素,返回类型并没声明泛型类型，尽可能去声明返回的泛型类型
last<T>(List<T> list) {
  T last = list[list.length - 1];
  //也可以使用list.last
  return last;
}
