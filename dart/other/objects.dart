///Dart 中可以被变量引用的皆为对象
main() {
  //数字、null、函数都是对象,都是可以被引用的
  int num = 1;
  int val = null;
  Function fun = add;//引用函数

  //num 变量的类型为 int , val变量的类型为 Null ，fun 变量的类型为闭包函数
  print(num.runtimeType); //打印：int
  print(val.runtimeType); //打印：Null
  print(fun); //Closure: (int) => int from Function 'add': static.
}

//函数
int add(int a) {
  return a++;
}
