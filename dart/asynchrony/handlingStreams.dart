import 'dart:io';

///操作流，类似于 Java 的 stream 特性，也跟 RxJava很类似
///https://www.dartlang.org/guides/language/language-tour#declaring-async-functions
/// 使用 await for 关键字，通常情况下不应该在UI使用，因为UI会有无穷无尽的事件流。
main() async {
  //参照官方网站上，然后修改部分代码
  String searchPath = ".";
  if (await FileSystemEntity.isDirectory(searchPath)) {
    final startingDir = Directory(searchPath);
    //下面两种方法最终的结果是一致的
//    awaitFor(startingDir);
//    print("awaitFor 结束");//awaitFor 为异步函数，这里的打印要先于文件遍历

    streamOpertion(startingDir);
    print("streamOpertion 结束");
  } else {
    printFile(File(searchPath));
  }
}

///使用 await for 进行文件遍历
awaitFor(Directory directory) async {
  await for (var entity in directory.list()) {
    if (entity is File) {
      printFile(entity);
    }
  }

  //上面代码使用await ，所以这里需要等待遍历完成后才会执行
  print("遍历完成");
}

///使用 stream 流操作链式调用进行文件遍历
streamOpertion(Directory directory){
  directory
      .list()
      .where((entity) => entity is File)
      .listen((entity) => printFile(entity));

  //上面代码未使用 await， 但测试结果上面代码为异步执行
  print("遍历完成");
}

///打印文件路径
printFile(FileSystemEntity file) async {
  print(file.path);
}
