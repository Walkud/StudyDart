///捕获异常
/// 涉及的关键字： throw 、 try 、 on 、 catch 、 rethrow
///https://www.dartlang.org/guides/language/language-tour#catch
main() {
//  _catchOne();
//  _catchMultiException();
//  _catchMultiType();
  _rethrowHandle();
}

///处理一种异常类型
_catchOne() {
  try {
    throw FormatException("抛出一个FormatException类型异常");
  } on FormatException {
    //关键字 on
    //在此处理异常
    print("处理异常");
  }
}

///处理多种异常类型
_catchMultiException() {
  try {
//    throw FormatException("抛出一个 FormatException 类型异常");
//    throw Exception("抛出一个 Exception 类型异常");
//    throw Error;
    throw "抛出一个字符串类型";
  } on FormatException {
    print("处理FormatException异常");
  } on Exception catch (e) {
    print("处理 Exception 异常： $e");
  } catch (e) {
    print('处理任意类型异常： $e');
  }
}

///处理捕获多种异常类型(异常对象和栈对象)
_catchMultiType() {
  try {
//    throw FormatException("抛出一个 FormatException 类型异常");
    throw "抛出一个字符串";
  } on Exception catch (e) {
    print("处理 Exception 异常： $e");
  } catch (e, s) {
    //拿到异常对象和栈对象
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }
}

///处理重新抛出的异常
_rethrowHandle() {
  try {
    _rethrow();
  } catch (e) {
    print("处理重新抛出的异常：$e");
  }
}

///处理异常并使用 rethrow 重新抛出异常
_rethrow() {
  try {
    throw "抛出一个异常";
  } catch (e) {
    print("处理：$e");
    rethrow; //使用 rethrow 重新抛出异常
  }
}
