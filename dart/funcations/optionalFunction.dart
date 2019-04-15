///https://www.dartlang.org/guides/language/language-tour#functions
///Dart 一切皆对象，funcation也是对象，它有一个 Function 类型
///https://www.dartlang.org/guides/language/language-tour#optional-parameters
main() {
  print(isSame(1));
  print(isSameNoReturnType(1));
  print(isSameExpression(1));

  //命名可选参数在调用时默认是以参 ”名称:值“ 的形式。这种形式与传参时的顺序无关。
  nameOptionalParameters(a: true, b: 2);

  //位置可选参数在调用时默认是以 ”名称=值“ 的形式。这种形式会在接受参数时会按顺序赋值。
  pointOptionalParameters("Dart", "Hello World!","a");
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

///命名可选的参数声明
nameOptionalParameters({a: true, b: 1, c}) {
  print("a:$a,b:$b,c:$c");
}

///位置可选的参数声明
pointOptionalParameters(String from, String msg, [String a, int b]) {
  print("from:$from,msg:$msg,a:$a,b:$b");
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
