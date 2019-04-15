///作用范围，function 嵌套
///"follow the curly braces outwards" 向外跟着花括号查看变量的作用域
///https://www.dartlang.org/guides/language/language-tour#lexical-scope
bool topLevel = true;
void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      print("topLevel:$topLevel");
      print("insideMain:$insideMain");
      print("insideFunction:$insideFunction");
      print("insideNestedFunction:$insideNestedFunction");
    }

    print("topLevel:$topLevel");
    print("insideMain:$insideMain");
    print("insideFunction:$insideFunction");
//    print("insideNestedFunction:$insideNestedFunction");//编译错误
    nestedFunction();
  }

  print("topLevel:$topLevel");
  print("insideMain:$insideMain");
//  print("insideFunction:$insideFunction");//编译错误
//  print("insideNestedFunction:$insideNestedFunction");//编译错误
  myFunction();
}