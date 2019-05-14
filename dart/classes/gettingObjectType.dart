///获取一个对象的类型
///可以使用 Object 的 runtimeType 属性去获取对象运行时的类型。
///https://www.dartlang.org/guides/language/language-tour#getting-an-objects-type
///
main() {
  String a = "123";

  print("a object type is:${a.runtimeType}"); //使用runtimeType属性获取类型
}
