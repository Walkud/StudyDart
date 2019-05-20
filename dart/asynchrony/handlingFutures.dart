///处理异步 Futures
///https://www.dartlang.org/guides/language/language-tour#handling-futures
///使用 async and await 关键字
///注意，使用 await 关键字必须在 async 描述的方法中才能使用
main() {
  var result = checkVersion();
  print(result); //2

  dynamic a = "a";
  a = 1;
  print(a); //3

  excution();
  delayExcution();
}

///异步函数
checkVersion() async {
  print("aaa"); //1   这里是同步执行的
  //异步调用
  var result = await lookUpVersion();//await 调用非 async 函数可以正常执行，但无任何意义，可去掉await
  print(result.runtimeType); //4  lookUpVersion为同步函数，这里返回类型为 int

  //异步调用
  var versionStr = await lookUpVersionStr();
  print(versionStr); //5

  //异步调用异常捕获
  try {
    await throwError();
  } catch (e) {
    print(e); //6
  } finally {
    print("throwError finally"); //7
  }
}

///同步函数声明(在同步函数中不能用 await 关键字)
int lookUpVersion() => 16;

///异步函数声明(返回类型会被隐式的转换为Future<...>)
Future<String> lookUpVersionStr() async =>"2.2";

///异步被调用函数(抛出异常)
Future<String> throwError() => throw Exception("抛出一个错误");

///Future的学习
///参考：https://www.jianshu.com/p/a4affde4c8ca
void excution() {
  new Future(() => futureTask) //  异步任务的函数
      .then((m) =>"futueTask execute result:$m") //   任务执行完后的子任务
      .then((m) => m.length) //  其中m为上个任务执行完后的返回的结果
      .then((m) => printLength(m))
      .whenComplete(() => whenTaskCompelete()); //  当所有任务完成后的回调函数
}

int futureTask() {
  return 21;
}

void printLength(int length) {
  print("Text Length:$length");
}

void whenTaskCompelete() {
  print("Task Complete");
}

///Future的延迟执行学习
///参考：https://www.jianshu.com/p/a4affde4c8ca
///当需要做动画的时候，不要使用Future，而需要使用animateFrame
void delayExcution() {
  new Future.delayed(const Duration(seconds: 1), () => print("Future.delayed"));
}
