/// Dart 中提供 Set 集合类型 ，它是一个无序且唯一元素的集合。
/// https://www.dartlang.org/guides/language/language-tour#sets
main() {
  //声明方式
//  Set sets = {"Dart","Flutter"};//由于当前Flutter 依赖 Dart 2.1 还不支持这种方式进行声明
//  Set ss = <String>{"Dart","Flutter"};//由于当前Flutter 依赖 Dart 2.1 还不支持这种方式进行声明
//  final constantSet = const {
//  'fluorine',
//  'chlorine',
//  'bromine',
//  'iodine',
//  'astatine',
//  };//由于当前Flutter 依赖 Dart 2.1 还不支持这种方式进行声明，该方式生成编译时集合，长度和内容不可变
  Set set = Set();

  //使用方式
  set.add("Dart");
  set.add("Flutter");
  print(set);

  //错误使用
  // Set<String> names = {}; //声明错误，应该再花括号前面添加 <String>
  // var names = {}; //这种方式创建的是一个 Map，应该再花括号前面添加 <类型>
// constantSet.add('helium'); // Uncommenting this causes an error.

  //常用 Api
  print(set.add("fff")); //添加元素至集合
  print(set.contains("Dart")); //集合中是否包含 Dart 字符串
  print(set.isEmpty); //是否为空集合
  print(set.remove("fff")); //移除某个元素
  print("lenght:${set.length}"); //获取集合的元素个数
  //只列了出部分Api
}
