/// Dart 中使用 List 对象来表示数组集合，在其它语言中大多使用数组 或 有序对象组。
/// List 对象的声明和使用方式非常像 JavaScript，索引从 0 开始，list.length - 1代表最后一个元素。
/// https://www.dartlang.org/guides/language/language-tour#lists
main() {
  //声明方式
  List list = [1, 2, 3];
  List objects = const [1, "2", true]; //声明一个编译时常量集合，表示集合的长度和内容不可变
  List<String> strs = ["a", "b", "c"]; //集合的泛型声明形式

  //使用方式
  list[0] = 0;
  print(list[1] == 2);

  //错误使用
//  objects[0] = 5;//运行时报错，objects 集合为一个编译时常量集合，长度和内容不可变
//  objects.add("a");//运行时报错，objects 集合为一个编译时常量集合，长度和内容不可变
//  strs.add(1);//编译时错误，strs声明泛型为String，只允许添加和修改的值为字符串类型

  //常用 Api
  list.add(5); //添加集合元素
  print(list[0]); //获取下标为0的元素
  print("length:${list.length}"); //获取集合元素的个数
  print("first:${list.first}"); //获取第一个元素
  print("last:${list.last}"); //获取最后一个元素
  print("removeAt:${list.removeAt(0)}"); //移除指定下标元素
  print("isEmpty:${list.isEmpty}"); //判断是否为空集合
  print("getRange:${list.getRange(0, 3)}"); //获取指定下标范围元素，使用时需要注意下标越界问题
//  list.clear();//清空集合元素
  Map<int, dynamic> maps = list.asMap(); //转换为 Map 对象，key为下标，value为下标对应元素
  print(maps);
  //还有很多api不一一列举了，比如：sort、sublist、insert等等
}
