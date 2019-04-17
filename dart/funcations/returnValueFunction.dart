///funcation 返回类型，如果function 没有return 代码，那dart会隐式的在 function 体内添加 return null 返回类型为 Null。
///All functions return a value. If no return value is specified, the statement return null; is implicitly appended to the function body.
///https://www.dartlang.org/guides/language/language-tour#return-values
main() {
  print(foo().runtimeType);//打印：Null
  print(foo() == null);//打印：true
}

///隐式返回null
foo() {}
