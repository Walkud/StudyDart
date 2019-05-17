///实现一个Library
///https://www.dartlang.org/guides/language/language-tour#implementing-libraries
///实现详情说明地址：https://www.dartlang.org/guides/libraries/create-library-packages
import 'lib/impl/Calculator.dart';
main(){
  print(max(1, 2));//调用自定义依赖库 max 方法
  print(random(10));//调用自定义依赖库 random 方法
}