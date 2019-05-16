///集合使用
///https://www.dartlang.org/guides/language/language-tour#using-collection-literals
main() {
  //List 限制集合泛型类型为 String
  List <String> colors = new List <String>();
  colors.add("RED");
  colors.add("GREEN");

  //Set 限制集合泛型类型为 String
  var names = <String>['Seth', 'Kathy', 'Lars'];
//  names.add(123);//类型错误，编译器报错

  //Map 限制泛型类型 Key 和 Value 都为 String
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  print("colors type:${colors.runtimeType}");
  print("names type:${names.runtimeType}");
  print("pages type:${pages.runtimeType}");
}
