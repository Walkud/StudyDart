///逻辑运算符 作用是颠倒或组合 boolean类型表达式
///https://www.dartlang.org/guides/language/language-tour#logical-operators
///
///   !expr	inverts the following expression (changes false to true, and vice versa) 非运算
///   ||	logical OR  或运算
///   &&	logical AND 与运算
///
main(){

  bool result1 = true;
  bool result2 = false;

  print(!result1);//非运算 颠倒
  print(result1 && result2);// 或运算  组合
  print(result1 || result2);// 与运算  组合

}