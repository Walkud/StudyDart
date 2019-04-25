///断言 assert如果为 false ，会中断正常的执行逻辑，抛出异常
///https://www.dartlang.org/guides/language/language-tour#assert
main() {
  var text = 1;
  var number = 1;
  var urlString = "https://www.dartlang.org";
  // Make sure the variable has a non-null value.
  assert(text != null); //断言不能为空，如果为空会抛出异常

// Make sure the value is less than 100.
  assert(number < 100); //断言小于100，如果>=100空会抛出异常

// Make sure this is an https URL.
  assert(urlString.startsWith('https')); //断言urlString 前缀为https，如果不为https会抛出异常
//  assert(urlString.startsWith('https'),'URL ($urlString) should start with "https".');//assert断言方法的第二个参数可以传入错误后的提示消息
}
