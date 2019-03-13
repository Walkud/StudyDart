/// 声明一个异步函数
/// https://www.dartlang.org/guides/language/language-tour#declaring-async-functions
/// 在函数体或函数体表达式前 用 async 关键字来表示该函数为一个异步函数，返回类型为Future
main() {
  print(lookUpAsyncVersion());
  print(lookUpVersion());
}

///同步函数
String lookUpVersion() => '1.0.0';

///异步函数
Future<String> lookUpAsyncVersion() async => '1.1.0';
