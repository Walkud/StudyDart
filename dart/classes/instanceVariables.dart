///实例变量
///类体中声明的变量（非 static）为实例变量，所有未初始化的实例变量值默认为 null ，所有的实例变量都会隐式的生成 getter 方法，非 final 声明的实例变量都会隐式的生成 setter 方法。
///示例变量在声明时设置了值，那么它的值是在执行构造器之前执行设置的。
///https://www.dartlang.org/guides/language/language-tour#instance-variables
main() {
  Foo foo = Foo();

  print("x：${foo.x}，y：${foo.y}，z：${foo.z}");
}

class Foo {
  num x; //声明x ，初始值为：null
  num y; //声明y ，初始值为：null
  num z = 0; //声明z，初始值为：0，该值是在执行构造器之前执行的
}
