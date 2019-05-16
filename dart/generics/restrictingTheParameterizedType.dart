/// 泛型参数限制 使用extends
/// https://www.dartlang.org/guides/language/language-tour#generic-collections-and-the-types-they-contain
main() {
  var someBaseFoo = Foo<SomeBaseClass>();
  var extenderFoo = Foo<Extender>();
  var foo = Foo();

//  Foo foo1 = Foo<String>();//编译器报错，泛型类型不匹配

  print(someBaseFoo);//打印Foo<SomeBaseClass>
  print(extenderFoo);//打印Foo<Extender>
  print(foo);//打印Foo<SomeBaseClass>
}

///这里使用 extends关键字限制泛型的类型
class Foo<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {}

class SomeBaseClass {}
