///使用参数类型的构造器
///https://www.dartlang.org/guides/language/language-tour#using-parameterized-types-with-constructors
main() {
  var names = <String>["ABC", "BCD"];
  var nameSet = Set<String>.from(names);

  print("names type:${names.runtimeType}");
  print("nameSet type:${nameSet.runtimeType}");

  //创建一个Map  key是int ,value是String
  var views = Map<int, String>();
}
