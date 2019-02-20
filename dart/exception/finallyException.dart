///Finally 不管是否异常，确保某些代码始终执行
///涉及的关键字：try 、 throw 、 catch 、 finally
///https://www.dartlang.org/guides/language/language-tour#finally
main() {
//  _finally1();
  _finally2();
}

_finally1() {
  try {
    int n = 1;
//    throw "抛出异常";
  } finally {
    //确保这句代码始终执行
    print("finally 执行语句");
  }
}

_finally2() {
  try {
    throw "抛出异常";
  } catch (e) {
    print("处理：$e");
  } finally {
    //确保这句代码始终执行
    print("finally 执行语句");
  }
}
