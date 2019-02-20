///While and do-while
///https://www.dartlang.org/guides/language/language-tour#while-and-do-while
main() {
  int i = 0;

  while (i < 3) {
    print(i++); //打印0，1，2
  }

  do {
    print(i++); //打印3，4
  } while (i < 5);
}
