/// 泛型参数限制 使用extends
/// https://www.dartlang.org/guides/language/language-tour#generic-collections-and-the-types-they-contain
main() {
  Foo foo = Foo<Extender>();

//  Foo foo1 = Foo<String>();//ERROR
}

class Foo<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {}

class SomeBaseClass {}
