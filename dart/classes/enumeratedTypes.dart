///枚举类型，是一个特殊的类型，通常代表一个规定的数值或常量值
///https://www.dartlang.org/guides/language/language-tour#enumerated-types
///使用限制：
///1、不能使用子类型、混合、不能实现枚举
///2、无法显示的实例化枚举
main() {
  print(Color.red);
  print(Color.bule.index);

  List<Color> colors = Color.values; //获取枚举所有类型集合
  for (var i = 0; i < colors.length; i++) {
    print(colors[i]);
  }

  var color = Color.bule;
  switch (color) {
    case Color.red:
      print("Color is Red");
      break;
    case Color.bule:
      print("Color is Blue");
      break;
    case Color.green:
      print("Color is Green");
      break;
  }
}

///声明一个枚举
enum Color { red, bule, green }
