///https://www.dartlang.org/guides/language/language-tour#functions
///Dart 一切皆对象，funcation也是对象，它有一个 Function 类型
///https://www.dartlang.org/guides/language/language-tour#optional-parameters
main() {
  print(isSame(1));
  print(isSameNoReturnType(1));
  print(isSameExpression(1));
  print(enableFlags(bold: true));

  print(say("Boy", "Hello World!"));
//  print(say("Boy", "Hello World!","device"));

  print(defaultParam("Judy"));
//  print(defaultParam("Judy", def: "Modify"));

  defaultListParam();
}

///常用的funcation声明方式
bool isSame(int num) {
  return num == 1;
}

///没有指定返回类型，也能正常工作，返回类型能被推断出来
isSameNoReturnType(int num) {
  return num == 1;
}

///常用的funcation 声明简写方式，使用 => expr ，这里必须要表达式，如果写if else 编译器会提示错误，可以写 xxx ? x : y 表达式
bool isSameExpression(int num) => num == 1;

///可选的参数声明
int enableFlags({bold: true}) {
  return bold ? 1 : 2;
}

///可选的参数声明
String say(String from, String msg, [String device]) {
  if (device != null) {
    return "result is $device";
  }
  return "$from says $msg";
}

///默认参数值
String defaultParam(String param, {String def = "Default"}) {
  return "$param => $def";
}

///默认的集合参数
void defaultListParam(
    {List<int> list = const [1, 2, 3],
    Map<String, String> maps = const {"Key1": "Value1", "Key2": "Value2"}}) {
  print(list);
  print(maps);
}
