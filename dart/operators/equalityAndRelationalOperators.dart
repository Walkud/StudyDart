///相等和比较相关的操作符
///https://www.dartlang.org/guides/language/language-tour#equality-and-relational-operators
///   ==	Equal; see discussion below
///   !=	Not equal
///   >	Greater than
///   <	Less than
///   >=	Greater than or equal to
///   <=	Less than or equal to
main() {
  //直接Copy官方源码
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  var x;
  var y;
  var c = 1;

  assert(x == y);//两个null使用 ==，结果返回true
  assert(x != c);//两个其中一个为null，结果返回false
}
