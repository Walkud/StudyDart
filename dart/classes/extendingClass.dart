///扩展类
///https://www.dartlang.org/guides/language/language-tour#extending-a-class
///1、扩展类,重写方法
///2、扩展操作符
///3、应对不存在的方法
main() {
  //1、扩展类
  Television television = Television();
  television.hello();
  SmartTelevision smartTelevision = SmartTelevision();
  smartTelevision.hello();

  //2、扩展操作符
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  final vv = v + w;
  final ww = v - w;

  print(vv.toString());
  print(ww.toString());

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));

  NoClassMethodA noClassMethodA = NoClassMethodA();
  noClassMethodA.hello();
}

class Television {
  void hello() {
    print("Are you Ok?");
  }
}

///使用extends继承需要扩展的类
class SmartTelevision extends Television {
  ///@override 使用注解表明复写需要扩展的方法
  @override
  void hello() {
    super.hello();
    print("I am fine.");
  }
}

///扩展操作符 参考官方网站
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  ///提供实例的 + 运算操作
  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);

  ///提供示例的 - 运算操作
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  String toString() {
    return 'Vector{x: $x, y: $y}';
  }

  /// Operator == and hashCode not shown. For details, see note below.
  @override
  bool operator ==(other) {
    if (other is! Vector) {
      return false;
    }
    return x == other.x && y == other.y;
  }
}

///应对不存在的方法
class NoClassMethodA implements Television {
  ///当调用了Television实例不存在的方法(hello,为实现)，则会走此方法
  @override
  void noSuchMethod(Invocation invocation) {
    if (invocation.memberName == #hello) {
      if (invocation.isMethod &&
          invocation.positionalArguments.isEmpty &&
          invocation.namedArguments.isEmpty) {
        // ... implement mock behavior for `foo` here.

        print('You tried to use a non-existent member: ' +
            '${invocation.memberName}');
        return;
      }
    }
    super.noSuchMethod(invocation);
  }
}
