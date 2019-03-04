///向类添加特征，类似于扩展类，向类添加特定的功能(属性和方法)
///https://www.dartlang.org/guides/language/language-tour#adding-features-to-a-class-mixins
///mixin 关键字是在Dart2.1以上支持
///1、问题：当特征1和特征2同时包含两个相同的属性和方法，with最后的特征包含的属性和方法会覆盖之前的
///2、问题：在Dart2.1之前 使用with Mixin3会出现报错，官方是使用abstract class 代理，还不太明白
main() {
  Musician musician = Musician();
  musician.talk();
  musician.say();
}

//使用with关键字向类添加特征
class Musician with Mixin1, Mixin2 {}

///特征1
mixin Mixin1 {
  String val = "Mixin1";

  talk() {
    print("Mixin1 : $val");
  }
}

///特征2
mixin Mixin2 {
  String val = "Mixin2";

  say() {
    print("Mixin2 : $val");
  }

  talk() {
    print("Mixin2 talk");
  }
}

///特征3 继承特征4
mixin Mixin3 on Mixin4 {
  helloDart() {
    print("Hello $text");
  }
}

///特征4
mixin Mixin4 {
  String get text => "Dart";
}
