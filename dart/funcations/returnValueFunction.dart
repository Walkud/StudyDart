///funcation 返回类型，如果function 没有return 代码，那dart会隐式的在function体内添加return null
///All functions return a value. If no return value is specified, the statement return null; is implicitly appended to the function body.
///https://www.dartlang.org/guides/language/language-tour#return-values
main() {
  print(foo() == null);
}

///隐式返回null
foo() {}
