/// Dart 提供 bool 类型来代表布尔值，bool 类型是有两个对象，true 和 false，它们都是编译时常量。
/// https://www.dartlang.org/guides/language/language-tour#booleans
///
/// Dart 的类型安全不允许这种编码方式，if(非布尔值) 或 assert(非布尔值)
main() {
  var fullName = '';
  bool isEmpty = fullName.isEmpty;
  bool valFlase = false;

  if (isEmpty) {
    print(isEmpty); //打印：true
  }
  print(valFlase); //打印：false

  var _null = null;
//  if (_null) {} //这里运行报 null 异常，Dart 是类型安全的

  // 检查 NaN.
  var checkNaN = 0 / 0;
  print(checkNaN.isNaN);
}
