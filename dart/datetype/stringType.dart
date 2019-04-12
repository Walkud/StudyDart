/// Dart 中的字符串采用的是 UTF-16 编码方案。 创建一个字符串可以使用单引号或双引号。
main() {
  //创建字符串
  var s1 = 'Single quotes work well for string literals.'; //使用单引号创建字符串
  var s2 = "Double quotes work just as well."; //使用双引号创建字符串
  var s3 = 'It\'s easy to escape the string delimiter.'; //字符串中使用转义符 \
  var s4 =
      "It's even easier to use the other delimiter."; //使用双引号创建时，就无须再去转义单引号，更方便
  print(s1);
  print(s2);
  print(s3);
  print(s4);

  //Dart 支持字符串中包含表达式，使用 ${表达式} 形式，如果表达式仅仅是一个标识符，则可以省略{},使用 $标识符 形式
  var str1 = 's1 runtimeType is :${s1.runtimeType}'; //使用${表达式}
  var str2 = "s2 value :$s2"; //省略{}
  print(str1);
  print(str2);

  //字符串连接
  String ab = "a" + "b"; //使用 + 连接
  //使用单引号和双引号创建一个字符串，隐式的使用 + 将字符串相连接
  var sss = 'String '
      'concatenation'
      " works even over line breaks.";
  //使用三个单引号或者双引号可以多行字符串赋值
  String str3 = """
  多行字符串
  行2
  """;

  //使用 == 运算符 判断两个字符串是否相等
  //使用 == 判断两个字符串是否相等，如果两个字符串包含相同的代码单元序列，则它们是等效的。
  var ss = 'The + operator ' + 'works, as well.';
  print(ss == 'The + operator works, as well.');

  //声明原始字符串，直接在字符串前加字符“r”
  //可以避免“\”的转义作用
  print(r"换行符：\n"); //打印：换行符：\n

  //当使用 $变量 进行字符串操作的时候，如果接受的变量为 const 修饰，则 $变量 必须为编译时常量
  // aConstNum 和 aConstBool是编译时常量
  const aConstNum = 0;
  const aConstBool = true;

  //aNum 和 aBool 不是编译时常量
  var aNum = 0;
  var aBool = true;

  const validConstString = '$aConstNum $aConstBool';
//  const invalidConstString = '$aNum $aBool';//报错，由于 aNum 和 aBool 不是编译时常量

  //常用 Api
  String api = "api";
  print(api.substring(0, api.length - 1));//截断
  print(api.replaceAll("a", "A"));//替换
  print(api.split("p"));//分割
  print(api.toUpperCase());//转大写，转小写是api.toLowerCase()
  print(api.length);//获取字符串长度
  print(api.isEmpty);//是否为空
  print(api.isNotEmpty);//是否不为空

}
