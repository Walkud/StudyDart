///自定义异常
///虽然 Dart 支持抛出任何非空对象的异常，但为了在开发中便于管理异常，最好开始通过自定义异常的形式，使查看代码时一目了然，也便于统一处理异常。
main(){
  int value = -1;
  try{
    if(value <0){
      //抛出异常
      throw CustomException("Value 值不能小于 0");
    }
  } on CustomException catch (e){
    print("异常：${e.getErrMsg()}");
  }
}

///自定义类型
class CustomException implements Exception{

  String msg;//异常说明

  CustomException(this.msg);

  String getErrMsg() => msg;
}