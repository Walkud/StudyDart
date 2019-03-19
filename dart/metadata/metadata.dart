import 'annotations/Todo.dart';

///Metadata 元数据
///https://www.dartlang.org/guides/language/language-tour#metadata
///在Dart中 @deprecated 和 @override 注解是可用的，也可以自定义注解
/// @deprecated 弃用
/// @override 重写
main() {}

class Television {
  /// _Deprecated: Use [turnOn] instead._
  @deprecated
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {}
}

///使用自定义注解 Todo
@Todo('seth', 'make this do something')
void doSomething() {
  print('do something');
}
