///打断和继续
///https://www.dartlang.org/guides/language/language-tour#break-and-continue
///   break     //打断(停止)循环
///   continue  //跳过当前循环，继续下一次循环
main() {
  int i = 0;
  while (true) {
    if (i > 2) {
      break; //打断循环
    }
    print(i++); //会打印0，1，2
  }

  const coll = const [1, 2, 3, 4];

  for (var value in coll) {
    if (value == 3) {
      continue; //跳过，并继续循环
    }
    print(value); //会打印1，2，4
  }

  //使用where跳转过滤
  coll
      .where((value) => value % 2 == 0) //不满足value%2条件会被过滤
      .forEach((value) => print(value)); //打印2，4
}
