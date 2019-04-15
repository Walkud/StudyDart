///匿名function
///([[Type] param1[, …]]) {
///  codeBlock;
///};
///https://www.dartlang.org/guides/language/language-tour#anonymous-functions
main() {
  const list = const [1, 2, 3];

  list.forEach((item) {//参数形式：([[Type] param1[, …]])
    print("item:$item");
  });

  //如果参数只有一个，可以使用 => 简写
  list.forEach((item) => print("item:$item"));
}
