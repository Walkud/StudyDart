import 'res/PrivateFunction.dart';

///Dart 没有访问修饰符，标识符使用下划线 (_) 开头则代表私有
/// 下划线 (_) 私有修饰符只能禁止非当前文件访问
main() {
  var pf = PrivateFunction();

  print(pf.val1);
//  print(pf._val2);//报错，无法访问私有属性
  pf.printA();
//  pf._printB();//报错，无法访问私有方法


  //同一文件下允许访问私有属性及方法
  var pf1 = PrivateFunction1();
  pf1._print();
  var pf2 = PrivateFunction2();
  pf2._print();

}

class PrivateFunction1 {
  var _val1 = "val1"; //私有变量
  _print() {
    var pf2 = PrivateFunction2();
    print(pf2._val2);
  }
}

class PrivateFunction2 {
  var _val2 = "val2"; //私有变量
  _print() {
    var pf1 = PrivateFunction1();
    print(pf1._val1);
  }
}
