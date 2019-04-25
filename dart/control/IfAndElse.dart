///if else 控制语句
///https://www.dartlang.org/guides/language/language-tour#if-and-else
main() {
  if (isRaining()) {
    print("穿雨衣");//如果下雨，则会打印：穿雨衣
  } else if (isSnowing()) {//isRaining() 为 false 才会执行该判断
    print("穿羽绒服");//如果下雪，则会打印：穿羽绒服
  } else {//isRaining() 和 isSnowing() 都为 false 才会执行该语句块
    print("不穿");
  }
}

///是否下雨
bool isRaining() {
  return true;
}

///是否下雪
bool isSnowing() {
  return true;
}
