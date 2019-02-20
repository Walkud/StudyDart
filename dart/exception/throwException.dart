///抛出异常
///Dart 提供 Exception 和 Error 类型，与 Java 不同的是，方法不需声明任何可能出现的异常，即不是必须要捕获的
///https://www.dartlang.org/guides/language/language-tour#throw
main(){

  //抛出一个指定异常类型的异常
//  throw FormatException("'Expected at least 1 section");

  //抛出一个任意的异常信息(未指定异常类型)
  //注意：正式环境通常是实现Exception 或 Error
//  throw 'Out of llamas!';//字符串类型
//  throw 1;//int 类型

  //抛出一个ERROR
  throw Error;

}

///抛出异常是一个表达式，Dart 可以使用 => 抛出异常，同样可在任意书写表达式的地方抛出异常
void distanceTo(String other) => throw UnimplementedError();