///条件表达式
///https://www.dartlang.org/guides/language/language-tour#conditional-expressions
///   condition ? expr1 : expr2   condition为true 返回 expr1 的值，否则返回 expr2 的值
///   expr1 ?? expr2   expr1 不为null 返回 expr1 的值，否则返回 expr2 的值
main() {
  //condition ? expr1 : expr2
  const condition = true;
  String result = condition ? "expr1" : "expr2";//如果 condition 为 true ,返回 expr1，否则返回 expr2
  print(result);//打印：expr1

  //expr1 ?? expr2
  var name;
  result = name ?? "expr2";//这里 name 为 null，result 的值为 expr2
  print(result);//打印：expr2

  name = "Dart2";
  result = name ?? "expr2";//这里 name 不为 null，result 的值未 Dart2
  print(result);//打印：Dart2

  // 不使用 ?? 的写法，可以看出 ?? 更简洁
  String playerName(String name) => name != null ? name : 'Guest';
}
