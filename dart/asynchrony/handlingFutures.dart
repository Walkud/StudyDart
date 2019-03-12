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
