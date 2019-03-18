///类型定义 typedef 关键字目前仅作用域函数类型声明
///https://www.dartlang.org/guides/language/language-tour#typedefs
///在Dart中 函数也是对象，所以，在构造器中，可以直接使用函数作为参数传递
main() {
  SortedCollection coll = SortedCollection(sort);
  print(coll.compare is Function); //判断是否为 Function 类型

  CompareCollection ccoll = CompareCollection(sort);

  print("ccoll is Function : ${ccoll.compare is Function}"); //判断是否为 Function 类型
//  print("ccoll is  Compare ${ccoll.compare is Compare}"); //判断是否为 Compare 类型   返回 false
  //通常 typedef 只用来判断函数的类型
  print("ccoll is  Compare ${ccoll.compare is Compare<int>}"); //判断是否为 Compare 类型   返回 true
}

int sort(int a, int b) => 0;

class SortedCollection {
  Function compare; //分配一个变量保存函数信息

  //构造器参数接收一个函数
  SortedCollection(int f(int a, int b)) {
    this.compare = f;
  }
}

///使用 typedef 关键声明函数类型
typedef Compare<T> = int Function(T a, T b);

class CompareCollection {
  Compare<int> compare;

  CompareCollection(this.compare);
}
