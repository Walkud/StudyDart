/// 声明一个异步函数
/// https://www.dartlang.org/guides/language/language-tour#declaring-async-functions
/// 在函数体或函数体表达式前 用 async 关键字来表示该函数为一个异步函数，返回类型为Future
main() {
  print(lookUpAsyncVersion());
  print(lookUpVersion());
}

///同步函数声明(在同步函数中不能用 await 关键字)
int lookUpVersion() => 16;

///异步函数声明(返回类型会被隐式的转换为Future<...>)
Future<String> lookUpAsyncVersion() async =>"2.2";
