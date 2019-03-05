/// 通用集合和类型包含
///https://www.dartlang.org/guides/language/language-tour#generic-collections-and-the-types-they-contain
main() {
  var names = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>); // true
}
