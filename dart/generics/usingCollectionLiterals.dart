///集合使用
///https://www.dartlang.org/guides/language/language-tour#using-collection-literals
main() {
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  print("names type:${names.runtimeType}");
  print("pages type:${pages.runtimeType}");
}
