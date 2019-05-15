///抽象方法
///在声明的类前加上 abstract 关键字来表示抽象类，抽象类无法实例化。抽象类通常用于定义一些接口且带有一些实现的场景。如果抽象类看起来可被实例化，可以使用工厂构造器。
///https://www.dartlang.org/guides/language/language-tour#abstract-classes
main() {
  Doer doer = EffectiveDoer();
  doer.doSomething();
  print("Doer is type:${doer.runtimeType}");
}

///抽象类
abstract class Doer {
  //abstract 表示抽象类
  // Define instance variables and methods...
  ///抽象方法
  void doSomething(); //声明抽象方法

  ///非抽象方法
  void pt(){
    print("非抽象方法");
  }
}

///使用 extends 关键字继承
class EffectiveDoer extends Doer {
  void doSomething() {
    //实现抽象方法的行为
    // Provide an implementation, so the method is not abstract here...
    print("execute EffectiveDoer doSomething!");
  }
}
