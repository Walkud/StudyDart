///构造器
///https://www.dartlang.org/guides/language/language-tour#constructors
/// 1、如果自己没有声明构造器，Dart默认提供一个无参构造器，并在默认调用超类无参构造器
/// 2、Dart支持自命名构造器，提高多构造函数的清晰度，注意：自命名构造函数是不遗传的，即子类无法继承自命名构造函数，需要在子类中实现该函数
/// 3、如果子类存在无参构造器，但父类没有无参构造器，那么子类必须在无参构造器中使用 : super . 或()方式去调用父类的构造器(可以是自命名构造器)
/// 4、构造函数方法断言，可以用于权限判断，但会抛出异常
/// 5、重定向构造器使用关键字  : this()
/// 6、factory关键字，工厂构造器，可以构造出从缓存中获取的实例，该实例可以是子类实例。
main() {
  Foo foo = Foo(0, 1);
  print("x：${foo.x}，y：${foo.y}");

  //调用自命名构造器
  Foo f1 = Foo.origin(2, 2);
  print("x：${foo.x}，y：${foo.y}");

  //注意，这里的子类没有继承父类的自命名构造函数，无法直接使用，需要在子类中实现该函数
//  Boo boo = Boo.origin(3, 3);

  Coo();

//  Foo.withAssert(-1, 6); //x传入小于0的数会抛出异常

  var imPoint1 = ImmutablePoint(1, 1);
  var imPoint2 = ImmutablePoint(1, 1);
  print(imPoint1 == imPoint2);

  //工厂构造器
  Logger logger1 = Logger("Factory");
  logger1.log("打印日志");
  Logger logger2 = Logger("Factory");

  print("logger1 == logger2: ${logger1 == logger2}");
}

class Foo {
  num x, y;

  //老式写法
//  Foo(num x, num y){
//    this.x = x;
//    this.y = y;
//  }

  //简写
  Foo(this.x, this.y);

  Foo.origin(this.x, this.y);

  //参照官方网站,构造器可以使用 : 直接为属性赋值
  Foo.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    //这里是函数体
    print('In Foo.fromJson(): ($x, $y)');
  }

  //参照官方网站 这里使用 : assert断言，看是否有权调用此函数，如果不满足assert条件，则会抛出异常
  Foo.withAssert(this.x, this.y) : assert(x >= 0) {
    print('In Foo.withAssert(): ($x, $y)');
  }
}

//子类
class Boo extends Foo {
  Boo(num x, num y) : super(x, y);

  Boo.alongXAxis(num x) : this(x, 0); //使用this重定向构造器
}

//子类，如果子类存在无参构造器，但父类没有无参构造器，那么子类必须在无参构造器中使用 : super . 或()方式去调用父类的构造器(可以是自命名构造器)
class Coo extends Foo {
//  Coo() : super(1, 1);
//  Coo() : super.origin(2, 2);

  Coo() : super.fromJson({"x": 1, "y": 3});
}

//不可变的构造器
class ImmutablePoint {
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);

  final num x, y;

  const ImmutablePoint(this.x, this.y);
}

// factory关键字，工厂构造器，
class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};//缓存

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}
