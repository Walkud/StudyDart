///Dart 支持泛型、顶级函数、顶级变量
int num = 1; //顶级变量
main() {//顶级函数
  List<String> list = ["s1", "s2"];//支持泛型
  print(num);
}

class Foo {
  String str = "Dart"; //非顶级变量
  printStr() {//非顶级函数
    print(str);
  }
}
