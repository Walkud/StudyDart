///循环控制语句
///https://www.dartlang.org/guides/language/language-tour#for-loops
main() {
  //Copy自官网
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

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
