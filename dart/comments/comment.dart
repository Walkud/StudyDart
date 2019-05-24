///注释，Dart 支持单行注释、多行注释、文档注释
///https://www.dartlang.org/guides/language/language-tour#comments
/// 单行注释：//
/// 多行注释：/* 开头  */ 结尾
/// 文档注释：///  或  /**
main() {
  //打印字符串(单行注释)
  print("单行注释");
}

mulitLineComment() {
  /*
    多行注释
    print("多行注释");
   */
}

///文档注释
documentationComment() {}

/**
 * 文档注释 [msg]，编译器建议使用///
 *
 */
documentationComment1(String msg) {}
