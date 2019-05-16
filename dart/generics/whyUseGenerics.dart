///泛型使用
///https://www.dartlang.org/guides/language/language-tour#why-use-generics
main() {
  var names = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
//  names.add(42); //类型错误，编译时异常

  //这种无泛型在设置多种类型时，运行时 IDE 会有告警
  Cache intCache = Cache();//无泛型
  intCache.setValue("123");//无任何问题
  intCache.setValue(123);//无任何问题
  intCache.printT();

  Cache<int> intCache2 = new Cache();//明确泛型 int 类型，限制了类型安全
//  intCache2.setValue("123");//这里传入字符串 "123"，编译时异常
  intCache2.printT();

  Cache<String> stringCache = Cache();//明确泛型 String 类型，限制了类型安全
  stringCache.setValue("Abc");//设置字符串，无任何问题
  stringCache.printT();
}

///声明泛型
class Cache<T> {
  T value;

  void setValue(T value){
    this.value = value;
  }

  void printT(){
    print(value);
  }
}
