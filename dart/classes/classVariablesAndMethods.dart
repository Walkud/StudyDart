///类的变量和方法
///https://www.dartlang.org/guides/language/language-tour#class-variables-and-methods
///1、使用static 实现一个类范围的变量和方法
///2、广泛或公共使用的方法可以使用static 作为顶级方法(静态方法)
main() {
  print("Queue initialCapacity is:${Queue.initialCapacity}");

  print("CalculatePlus.plus() => ${CalculatePlus.plus(1, 1)}");
}

class Queue {
  //静态变量在使用之前不会初始化
  static const initialCapacity = 16; //声明一个类范围的属性
}


class CalculatePlus {
  ///静态方法
  static num plus(int a, int b) {
    return a + b;
  }
}
