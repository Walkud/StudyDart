///While and do-while
///https://www.dartlang.org/guides/language/language-tour#while-and-do-while
///while 语句的历史更悠久，如果无法预先知道循环次数，那么可以使用while 或 do-while 循环语句，两者的区别在于，do-while 至少执行一次。
main() {
  int i = 0;

  while (i < 3) {
    print(i++); //打印0，1，2
  }

  //i 已经为 3
  do {
    print(i++); //打印3，4
  } while (i < 5);
}
