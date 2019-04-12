/// Dart 中 runes (符文) 就是一些特殊的表情和符号使用 UTF-32 字符编码的字符串，在 Dart 中的字符串使用的是 UTF-16，
/// 所以要展示这些符文就需要特殊的句法，这个表现形式就是 runes。
/// https://www.dartlang.org/guides/language/language-tour#runes
main() {
  //句法一
  var clapping = '\u{1f44f}';
  print(clapping); //打印：👏
  print(clapping.codeUnits); //打印：[55357, 56399]
  print(clapping.runes.toList()); //[128079]

  //句法二
  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input)); //打印： ♥  😅  😎  👻  🖖  👍
}
