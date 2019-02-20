///其它的操作符
///https://www.dartlang.org/guides/language/language-tour#other-operators
///   ()	Function application	Represents a function call  表示函数调用
///   []	List access	Refers to the value at the specified index in the list  表示集合访问，可选参数
///   . 	Member access	Refers to a property of an expression; example: foo.bar selects property bar from expression foo   表示成员属性和方法调用
///   ?.	Conditional member access	Like ., but the leftmost operand can be null;
///   example: foo?.bar selects property bar from expression foo unless foo is null
///   (in which case the value of foo?.bar is null)  类似于 . 操作符，但如果调用对象不为null，则执行后续表达式，否则不执行,返回null
main() {
  //()
  print("print() 表示调用print函数");

  //[]
  const list = const [1, 2, 3];
  print(list[0]);

  //.
  String str = "abc";
  print(str.toUpperCase());

  //?.
  String val;
  print(val?.toUpperCase()); //打印null
  val = "abc";
  print(val?.toUpperCase()); //打印ABC
}
