///方法是对象提供行为的函数
///https://www.dartlang.org/guides/language/language-tour#methods
///1、实例方法
///2、setter 和 getter方法
main() {
  //1、实例方法
  Calculate calculate = Calculate();
  print(calculate.plus(5, 5));

  //2、setter 和 getter方法
  Rect rect = Rect(1, 2, 5, 5);
  print(
      "left:${rect.left} , top:${rect.top} , right:${rect.right} , bottom:${rect.bottom}");
}

///1、实例方法
class Calculate {
  num plus(num a, num b) {
    return a + b;
  }
}

///2、setter 和 getter方法
class Rect {
  num left, top, width, height;

  Rect(this.left, this.top, this.width, this.height);

  //getter方法
  num get right => left + width;

  //setter方法
  set right(num value) => left = value - width;

  //getter方法
  num get bottom => top + height;

  //setter方法
  set bottom(num value) => top = value - height;
}
