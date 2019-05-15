///隐式接口
///Dart 的每个类都隐式定义了一个接口，该接口包含了该类的所有实例成员和其实现的接口。
///https://www.dartlang.org/guides/language/language-tour#implicit-interfaces
main() {
//4、隐式接口
  A a = A();
  B b = B();
  a.say();
  b.say();
  b.doSomething();

//  A aa = B();
//  aa.say();
}

class A {
  void say() {
    print("I am A");
  }
}

///使用implements关键字实现接口，可以实现多个接口
class B implements A, C {
  @override
  say() {
    print("I am B");
  }

  @override
  void doSomething() {
    print("B 实现了 Doer接口");
  }
}

abstract class C {
  doSomething();
}
