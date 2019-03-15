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

///异步方法
checkVersion() async {
  print("aaa"); //1
  //感觉异步方法执行到这里就阻塞并返回了这个异步方法，下面的打印方法要等异步回调后才执行，所以下面这行打印顺序是在最后才打印
  var result = await lookUpVersion();
  print(result.runtimeType); //4

  //执行多个耗时操作
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

  return result;
}

///被调用方法
int lookUpVersion() => 16;

///被调用方法
String lookUpVersionStr() => "2.2";

///被调用方法
String throwError() => throw Exception("抛出一个错误");

///Future的学习
///https://www.jianshu.com/p/a4affde4c8ca
void excution() {
  new Future(() => futureTask) //  异步任务的函数
      .then((m) => "futueTask execute result:$m") //   任务执行完后的子任务
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
///https://www.jianshu.com/p/a4affde4c8ca
///当需要做动画的时候，不要使用Future，而需要使用animateFrame
void delayExcution() {
  new Future.delayed(const Duration(seconds: 1), () => print("Future.delayed"));
}
