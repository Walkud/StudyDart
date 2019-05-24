///隔离，在Dart中实现并发可以用Isolate，并发测试
///https://www.dartlang.org/guides/language/language-tour#isolates
///
///学习地址：http://codingdict.com/article/21938
import 'dart:isolate';

main() async {
  Isolate.spawn(hello, "Hello Dart!");
  Isolate.spawn(hello, "So Easy Dart!");
  Isolate.spawn(hello, "Go go Dart!");

  print("main isolate1");
  print("main isolate2");

  // 这里添加延迟一秒是为了防止当前 main isolate 队列都为空后退出程序，而无法看到其他 Isolate 的打印结果
  // 放开注释后每次都会看到其他Isolate 的打印结果
//  Future.delayed(Duration(seconds: 1),()=> print("延迟打印"));
}

void hello(String msg){
  print("isolate : $msg");
}
