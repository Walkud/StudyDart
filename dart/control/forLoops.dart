///循环控制语句
///https://www.dartlang.org/guides/language/language-tour#for-loops
///for 是常用的语句之一，如果业务逻辑与循环次数强相关，那么就可以使用 for 循环语句。
main() {
  //Copy自官网
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {//循环5次
    message.write('!');//在 message 的尾部追加!
  }
  print(message);//打印：Dart is fun!!!!!

  //for循环体中使用的闭包，闭包中捕获了i下标，从而避免的JavaScript中的陷阱
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i)); //这里打印0，1，JavaScript中这里会打印两个2
  }

  //如果不关心计数器，则可以使用forEach进行遍历更优雅
  callbacks.forEach((c) => c());

  //for-in
  var collection = [2, 3, 4];
  for (var val in collection) {
    print(val); //打印2，3，4
  }
}
