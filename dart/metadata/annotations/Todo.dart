library todo;

///自定义注解,注意，构造器必须为const，属性必须声明final
class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}
