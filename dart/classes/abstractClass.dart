///抽象方法
///https://www.dartlang.org/guides/language/language-tour#abstract-classes
main() {
  Doer doer = EffectiveDoer();
  doer.doSomething();
  print("Doer is type:${doer.runtimeType}");
}

///抽象方法
abstract class Doer {
  //abstract 表示抽象类
  // Define instance variables and methods...

  void doSomething(); //声明抽象方法
}

///使用extends 关键字继承
class EffectiveDoer extends Doer {
  void doSomething() {
    //实现抽象方法的行为
    // Provide an implementation, so the method is not abstract here...
    print("execute EffectiveDoer doSomething!");
  }
}
