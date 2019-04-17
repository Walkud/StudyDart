///测试一个function是否相等示例，暂不知道用处在哪里
///以下代码直接copy的官网
///https://www.dartlang.org/guides/language/language-tour#testing-functions-for-equality
void foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

void main() {
  var x;

  // Comparing top-level functions.
  x = foo;
  assert(foo == x);

  // Comparing static methods.
  x = A.bar;
  assert(A.bar == x);

  // Comparing instance methods.
  var v = A(); // Instance #1 of A
  var w = A(); // Instance #2 of A
  var y = w;
  x = w.baz;

  // These closures refer to the same instance (#2),
  // so they're equal.
  assert(y.baz == x);// y.baz 和 x 对比的同一个实例的成员函数，所以相等

  // These closures refer to different instances,
  // so they're unequal.
  assert(v.baz != w.baz);//v 和 w 引用的实例不同，所以对应的成员函数也不相等
}