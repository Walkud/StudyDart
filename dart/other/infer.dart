///Dart 是强类型语言，支持类型推断
main(){
  var num = 1;
  var str = "String";
  print(num++);
//  print(str++);//推断出str为String，不能使用++ ，所以这里报错
}