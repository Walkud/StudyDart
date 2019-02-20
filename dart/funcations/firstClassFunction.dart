///function 作为一个参数传入调用的function中，如果只有一处在使用这个function 建议使用匿名function  详见：anonymousFunction.dart
///https://www.dartlang.org/guides/language/language-tour#functions-as-first-class-objects
main() {
  const List<int> list = const [1, 2, 3];
  list.forEach(printElement);
}

///被传入的function
void printElement(int elment) {
  print(elment);
}
