///if else 控制语句
///https://www.dartlang.org/guides/language/language-tour#if-and-else
main() {
  if (isRaining()) {
    print("isRaining(): true");
  } else if (isSnowing()) {
    print("isSnowing(): true");
  } else {
    print("else");
  }
}

bool isRaining() {
  return true;
}

bool isSnowing() {
  return true;
}
