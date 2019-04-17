///运行时检查类型操作符
///https://www.dartlang.org/guides/language/language-tour#type-test-operators
///   as	Typecast (also used to specify library prefixes)    类型转换操作符
///   is	True if the object has the specified type   判断类型是否为指定类型
///   is!	False if the object has the specified type    判断类型是否不为指定类型
main(){
  Object i = 255;

  //使用as 进行类型强转
  print((i as int).toRadixString(16).toUpperCase());//打印：FF

  if(i is int){
      //这里使用is 判断类型后，该代码段已经隐式转换了
      print(i.toRadixString(16).toUpperCase());//打印：FF
  }

  print(i is int);//打印：true
  print(i is! String);//打印：true

  Object xy = "xy";
//  print(xy as int);//运行时错误，xy不能强转为int类型，会抛出异常 type 'String' is not a subtype of type 'int' in type cast
}