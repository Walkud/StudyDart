///隔离，在Dart中实现并发可以用Isolate，他类似于Java中的Thread,但不共享内存，是一个独立的Dart程序执行环境，有独立的堆和栈
///https://www.dartlang.org/guides/language/language-tour#isolates
///
///学习地址：https://ducafecat.tech/2019/01/21/dart/dart-32-isolates/
import 'dart:async';
import 'dart:isolate';

main() async {
  var receivePort = new ReceivePort();
  await Isolate.spawn(echo, receivePort.sendPort);

  // first 是 echo 线程的消息入口
  var sendPort = await receivePort.first;

  var msg = await sendReceive(sendPort, "foo");
  print('received $msg');
  msg = await sendReceive(sendPort, "bar");
  print('received $msg');
}

// 隔离的入口点
echo(SendPort sendPort) async {
  // 打开接收端口接收传入的消息。
  var port = new ReceivePort();

  // 通知任何其他隔离此隔离侦听的端
  sendPort.send(port.sendPort);

  // 循环接收消息
  await for (var msg in port) {
    var data = msg[0];
    print('received $data');
    SendPort replyTo = msg[1];
    replyTo.send('response:$data');
    if (data == "bar") port.close();
  }
}

// 发送并接收消息
Future sendReceive(SendPort port, msg) {
  ReceivePort response = new ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}
