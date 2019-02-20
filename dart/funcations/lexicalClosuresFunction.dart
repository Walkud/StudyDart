///funcation 闭包
///https://www.dartlang.org/guides/language/language-tour#lexical-closures
main(){

  var adder1 = makeAdder(2);//这里返回的是一个function (num i) => addBy + i;
  var adder2 = makeAdder(3);//这里返回的是一个function (num i) => addBy + i;

  print(adder1(1)== 3);
  print(adder2(3) == 6);
}

///官方拷贝，返回的是一个function
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}