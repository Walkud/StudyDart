///条件表达式
///https://www.dartlang.org/guides/language/language-tour#conditional-expressions
///   condition ? expr1 : expr2   condition为true 返回 expr1 的值，否则返回 expr2 的值
///   expr1 ?? expr2   expr1 不为null 返回 expr1 的值，否则返回 expr2 的值
main() {

  //condition ? expr1 : expr2
  const condition = true;
  String result = condition ? "expr1" : "expr2";
  print(result);

  //expr1 ?? expr2
  var name;
  result = name ?? "expr2";
  print(result);

  name = "Dart2";
  result = name ?? "expr2";
  print(result);

}
