///使用依赖库
///https://www.dartlang.org/guides/language/language-tour#using-libraries
/// 1、import 导入依赖
/// 2、import 'xx:xx' as a 依赖前缀
/// 3、导入部分依赖库(Importing only part of a library)
/// 4、延迟导入依赖库()
///   a. 懒加载依赖库可以减少应用的初始化启动时间
///   b. 懒加载可以用于A/B测试 算法实现
///   c. 懒加载可用于很少使用的功能，如对话弹框等
import 'dart:math';//导入内置库
import 'package:async/async.dart';//导入其它库
import 'lib/TestLibrary.dart'; //导入本地依赖
import 'lib/SameLibrary.dart' as aa; //依赖导入前缀，解决相同类名冲突

import 'lib/ImprotPartLibrary.dart' show Part1,Part3; //只依赖Part1，隐藏Part2（导入部分依赖库）
//import 'lib/ImprotPartLibrary.dart' hide Part1;//隐藏Part1,依赖其它所有（导入部分依赖库）

import 'lib/LazilyLibrary.dart' deferred as lazily; //懒加载依赖库
main() {
  TestLibrary testLibrary = TestLibrary();
  SameLibrary sameLibrary = SameLibrary(); //TestLibrary依赖中的SameLibrary

  aa.SameLibrary aSameLibrary = aa.SameLibrary(); //SameLibrary依赖中的SameLibrary

  Part1 part1 = Part1(); //show Part1 时有效
//  Part2 part2 = Part2();//hide Part1 时有效

  greet(); //异步延迟加载依赖

}

///异步延迟加载依赖库
Future greet() async {
  await lazily.loadLibrary();
//  lazily.LazilyLibrary library = lazily.LazilyLibrary();//延迟加载不能显示使用类声明
  var library = lazily.LazilyLibrary();
  print(library.runtimeType);
  library.hello();
}
