///类型定义 typedef 关键字目前仅作用域函数类型声明
///https://www.dartlang.org/guides/language/language-tour#typedefs
main() {
  SortedCollection coll = SortedCollection(sort);
  print("coll is Function : ${coll.compare is Function}"); //是否为 Function 类型


  //使用 typedef关键字去使用显示名称和保留类型信息。
  CompareSortedCollection csColl = CompareSortedCollection(sort);
  print("csColl is Function : ${csColl.compare is Function}"); //是否为 Function 类型
  print("csColl is Compare ${csColl.compare is Compare}"); //是否为 Compare 类型   返回 true

  //使用泛型去检查任何函数类型
  print("sortInt is Compare<int> ${sortInt is CompareT<int>}"); //是否为 Compare<int> 类型   返回 true

  print("toast is Hello<String> ${toast is Hello<String>}"); //是否为 Hello 类型   返回 true
}

int sort(Object a, Object b) => 0;

//未使用 typedef 关键字
class SortedCollection {
  Function compare;

  SortedCollection(int f(Object a, Object b)) {
    compare = f;
  }
}

//使用 typedef 关键字去声明函数类型别名
typedef Compare = int Function(Object a, Object b);

class CompareSortedCollection {
  Compare compare;

  CompareSortedCollection(this.compare);
}

//Dart 提供了使用泛型去检查任何函数类型
typedef CompareT<T> = int Function(T a, T b);

int sortInt(int a, int b) => 0;

//也可以直接声明函数类型别名(别名首字母建议大写)
typedef void Hello<T>(T text);

void toast(String text){
  print("toast:$text");
}
