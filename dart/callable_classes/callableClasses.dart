///Callable classes Dart允许你的类实例像调函数一样使用，创建的类实现call()方法就可以了
///https://www.dartlang.org/guides/language/language-tour#callable-classes
main() {
  var wf = WannabeFunction();
  var out = wf("你", '我', '他'); //用调用方法一样使用
  print(out);
}

class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}
