///泛型使用
///https://www.dartlang.org/guides/language/language-tour#why-use-generics
main() {
  var names = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
//  names.add(42); // Error

  IntCache cache = IntCache();
  print(cache.getByKey(""));

  StringCache stringCache = new StringCache();
  print(stringCache.getByKey(""));
}

///int泛型
class IntCache extends Cache<int> {
  @override
  int getByKey(String key) {
    return 1;
  }

  @override
  void setByKey(String key, int value) {}
}

///String 泛型
class StringCache extends Cache<String> {
  @override
  String getByKey(String key) {
    return "String Cache";
  }

  @override
  void setByKey(String key, String value) {}
}

abstract class Cache<T> {
  T getByKey(String key);

  void setByKey(String key, T value);
}
