///实例变量
///https://www.dartlang.org/guides/language/language-tour#instance-variables
main() {
  Foo foo = Foo();

  print("x：${foo.x}，y：${foo.y}，z：${foo.z}");
}

class Foo {
  num x; //声明x ，初始值为：null
  num y; //声明y ，初始值为：null
  num z = 0; //声明z，初始值为：0
}
