///使用参数类型的构造器
///https://www.dartlang.org/guides/language/language-tour#using-parameterized-types-with-constructors
main() {
  var names = <String>["ABC", "BCD"];
  var nameSet = Set<String>.from(names);

  var views = Map<int, String>();
  var objects = Map();//未明确泛型类型，默认为 dynamic

  print("names type:${names.runtimeType}");//打印：names type:List<String>
  print("nameSet type:${nameSet.runtimeType}");//打印：nameSet type:_CompactLinkedHashSet<String>
  print("views type:${views.runtimeType}");//打印：views type:_InternalLinkedHashMap<int, String>
  print("objects type:${objects.runtimeType}");//打印：objects type:_InternalLinkedHashMap<dynamic, dynamic>
}
