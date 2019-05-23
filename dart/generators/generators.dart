import 'dart:async';

///生成器
///https://www.dartlang.org/guides/language/language-tour#generators
///1、同步生成器，返回一个 Iterable 对象
///2、异步生成器，返回一个 Stream 对象
///
/// 关键字
/// 1、sync* 同步生成器标识
/// 2、async* 异步生成器标识
/// 3、yield 代表生成或产出，简单的理解为，yield 在当前作用域中生成了一个临时且唯一的集合来存放后面表达式的值
/// 4、yield* 解决在使用生成器时递归的性能问题，简单的理解为与 yield 的作用相同，只是扩大了临时集合的作用域(使所有递归调用都使用同一个集合来存放表达式的值)
///
/// 参考文章：http://www.cndartlang.com/720.html
main() {
  print(naturalsTo(10));
  print(asynchronousNaturalsTo(10)); //异步函数这样是无法打印出生成的值

  //生成一起打印一个 （打印方案一）
//  asynchronousNaturalsTo(10).listen((v) {
//    print(v);
//  });

  //生成一起打印一个 （打印方案二）
  StreamSubscription<int> streamSubscription =
      asynchronousNaturalsTo(10).listen(null);

  streamSubscription.onData((v) {
    print("value:$v");

//    streamSubscription.pause();//可以暂停
  });

  //可以取消
  streamSubscription.cancel();

  print(naturalsDownFrom(3));
  print(naturalsDownFrom1(3));
}

///同步生成器，返回的一个 Iterable<T> 对象
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

///异步生成器，返回的一个 Stream<T> 对象
Stream<int> asynchronousNaturalsTo(int n) async* {
  print("Begin");

  int k = 0;
  while (k < n) yield k++;

  print("End");//并不会打印
}

///使用 yield 关键字递归调用生成器，这种方式会出现性能问题
//Iterable naturalsDownFrom(n) sync* {
//  if (n > 0) {
//    yield n;
//    for (int i in naturalsDownFrom(n-1)) { yield i; }
//  }
//}

///性能问题示例
int level = 0;

Iterable naturalsDownFrom(n) sync* {
  level++;

  if (n > 0) {
    print("level: $level n:$n");
    yield n;

    //这里因为每次递归调用生成器的时候，都会生成一个新的集合实例，所以导致只能把返回的集合遍历一次并添加至集合中
    for (int i in naturalsDownFrom(n - 1)) {
      print("level: $level i:$i");
      yield i;
    }
  }
}

///使用yield*解决性能问题示例
int count = 3;
Iterable naturalsDownFrom1(n) sync* {
  count++;
  if (n > 0) {
    print("count: $count n:$n");
    yield n;
    yield* naturalsDownFrom1(n - 1); //使用 yield* 递归调用并不会生成新的集合实例，很好的解决了性能问题。
  }
}
