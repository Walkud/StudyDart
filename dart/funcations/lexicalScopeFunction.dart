///作用范围，function嵌套
///"follow the curly braces outwards" 向外跟着花括号查看变量的作用域
///https://www.dartlang.org/guides/language/language-tour#lexical-scope
bool topLevel = true;
void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }

//    nestedFunction();
  }

//  myFunction();
}