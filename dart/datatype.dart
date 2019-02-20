///数据类型
///https://www.dartlang.org/guides/language/language-tour#built-in-types
main() {
  _string();
  _number();
  _constAndFinal();
  _list();
  _map();
  _runes();
  //assert 是语言内置的断言函数，仅在检查模式下有效
  //如果断言失败则程序立刻终止
  assert(1 == 1);
}

///字符串类型
_string() {
  //Dart 语言本质上是动态类型语言，类型是可选的
  //可以使用 var 声明变量，也可以使用类型来声明变量
  //一个变量也可以被赋予不同类型的对象
  //但大多数情况，我们不会去改变一个变量的类型

  //字符串赋值的时候，可以使用单引号，也可以使用双引号
  var str1 = 'var type => String';
//  var str1 = "var type => String";

  //在Dart中，相邻的字符串在编译的时候会自动连接
  //应该使用如下方式进行连接操作，建议使用$变量形式
  var strPlus = "a" + "b"; //+号链接
  var stra = "sss" "bbb";

  //字符串连接可以使用 $变量  or ${变量}形式
  var strx = 'stx:$stra';
//  var strx = 'stx:${stra}ss';

  //使用 \ 进行转义
  String str2 = 'It\'s Str2';
//  String str2 = "It's \"key\"";

  //使用三个单引号或者双引号可以多行字符串赋值
  String str3 = """
  多行字符串
  """;

  print(str1);

  //声明原始字符串，直接在字符串前加字符“r”
  //可以避免“\”的转义作用，在正则表达式里特别有用
  print(r"换行符：\n");
}

///数值类型
///int 和double 是num的子类型
_number() {
  //Dart中数值是num，它有两个子类型：int 和 double
  //int是任意长度的整数，double是双精度浮点数
  var hex = 0xFF;
  int _int = 0xFF;
  double _double = 0xF;

  //转换进制
  print("整型转换为16进制：$hex —> 0x${hex.toRadixString(16).toUpperCase()}");
}

///在声明变量的时候，除了var，还可以使用const和final
///同时，在使用const和final的时候，可以省略var或者其他类型
///区别：
///const定义的是编译时常量，只能用编译时常量来初始化
///final定义的常量可以用变量来初始化
_constAndFinal() {
  var i = 1;
  const consti = 1; //省略了var
  final finali = 1; //省略了var

  int x = 1;
  const int constx = 1; //未省略int
  final int finalx = 1; //未省略int

//  const var sss = 1;//不支持const var 声明

//  const constTime = new DateTime.now();//错误，new DateTime.now()不是const常量
  final finalTime = new DateTime.now(); //OK

  const constArr = const [1, 2, 3]; //
  const arr = [1, 2, 3]; //

  final finalArr = [1, 2, 3]; //Ok
  final finalConstArr = const [1, 2, 3]; //Ok
//  final errorArr = const[new DateTime.now(),2,3];//Error,const右边必须是常量

  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

// These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
// const invalidConstString = '$aNum $aBool $aString $aConstList';//ERROR const 声明变量时，字符串中的表达式使用的变量也必须是常量
}

///dynamic代表不能明确指定类型关键字，可以理解为Java 的 Object
_dynamic() {
  dynamic bob = "Bob";
}

/// 数值类型转字符串，字符串转数值类型
_numTurnString() {
  var val1 = 1.toString(); //数值类型转字符串
  assert(val1 == "1");

  double val2 = double.parse("1.1"); //字符串转double
  assert(val2 == 1.1);
}

///位移操作
_intBitwise() {
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
}

///List 集合
_list() {
  var list = [1, 2, 3];
  const constList = const [1, 2, 3]; //此List调用add方法会抛出异常

  list.add(4);

  assert(list[0] == 1);
  assert(list.length == 4);

//  constList.add(5);//运行时会抛出异常Cannot add to an unmodifiable list
}

///Map 集合
_map() {
  var maps = {
//  Key:Value
    "Key1": "Value1",
    "Key2": "Value2"
  };

  var newMaps = Map();
  newMaps["Key1"] = "Value1";
  newMaps["Key2"] = "Value2";

  const constMaps = {
    "Key1":"Value1"
  };
//  constMaps["Key1"] = "Val";//ERROR Uncommenting this causes an error.
}

///在Dart2 中 runes使用的是UTF-32作为字符编码
_runes(){
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}

_symbols(){
  #radix;
  #bar;


}
