///算数操作符
///https://www.dartlang.org/guides/language/language-tour#arithmetic-operators
///   +	Add   加运算
///   –	Subtract    减运算
///   -expr	Unary minus, also known as negation (reverse the sign of the expression)    一元反转表达符号
///   *	Multiply    乘运算
///   /	Divide    除运算 返回double
///   ~/	Divide, returning an integer result //除运算，返回整数
///   %	Get the remainder of an integer division (modulo) 模数运算  获取余数
///
///   ++var	var = var + 1 (expression value is var + 1)
///   var++	var = var + 1 (expression value is var)
///   --var	var = var – 1 (expression value is var – 1)
///   var--	var = var – 1 (expression value is var)

main() {
  _add();
  _subtract();
  _reverseExpression();
  _multiply();
  _divide();
  _divideReturnIntegerResult();
  _modulo();
  _prefixAndPostfix();
}

/// +	Add   加运算
_add() {
  assert(1 + 1 == 2);
}

/// –	Subtract    减运算
_subtract() {
  assert(3 - 1 == 2);
}

/// -expr	Unary minus, also known as negation (reverse the sign of the expression)    一元反转表达符号
_reverseExpression() {
  assert(1 - 2 == -1);
}

/// *	Multiply    乘运算
_multiply() {
  assert(2 * 3 == 6);
}

/// /	Divide    除运算 返回double
_divide() {
  assert(5 / 2 == 2.5);
}

/// ~/	Divide, returning an integer result //除运算，返回整数
_divideReturnIntegerResult() {
  assert(5 ~/ 2 == 2);
}

/// %	Get the remainder of an integer division (modulo) 模数运算  获取余数
_modulo() {
  assert(5 % 2 == 1);
}

/// ++ -- 前缀或后缀表使用
_prefixAndPostfix() {
  var val = 1;
  var x = ++val; //x = 2，先加再赋值
  assert(x == 2);

  val = 1;
  x = val++; //x = 1，先赋值再加
  assert(x == 1);

  val = 1;
  x = --val; //x = 0，先减再赋值
  assert(x == 0);

  val = 1;
  x = val++; // x = 1，先赋值再减
  assert(x == 1);
}
