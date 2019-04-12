/// Dart 提供 Map 类型，Map 是一个关联键 ( Key ) 和值 ( Value ) 的对象，每个键 ( Key ) 只出现一次，Value 则可以出现多次。
///https://www.dartlang.org/guides/language/language-tour#maps
main(){

  //声明方式
  var maps = {
    "Key1": "Value1",
    "Key2": "Value2"
  };// Key 的类型为 String，Value 的类型为 String

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };// Key 的类型为 int，Value 的类型为 String

  //使用方式
  maps["Key1"] = "Map";
  print(maps);
  nobleGases[2] = "SS";
  print(nobleGases);

  //错误使用
  const constMaps = {
    "Key1":"Value1"
  };
//  constMaps["Key1"] = "Val";//运行时报错，constMaps 为一个编译时常量 Map，长度和内容不可变
//  nobleGases["abc"] = "";//编译时错误，nobleGases 的 Key 为 int 类型，不能添加字符串类型的 Key

  //常用 Api
  maps["Key3"] = "添加";//添加 Key 和 Value
  print(maps["Key3"]);//获取对应 Key 的 Value
  print(maps.containsKey("Key1"));//是否包含对应Key
  print(maps.remove("Key3"));
  print("length:${maps.length}");
  print(maps.isEmpty);//maps 是否为空
  print(maps.runtimeType);//打印 mpas 的类型：_InternalLinkedHashMap<String, String>
}