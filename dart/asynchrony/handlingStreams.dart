import 'dart:io';

///处理流，从流中获取数据（这个知识点还不是很明白，）
///https://www.dartlang.org/guides/language/language-tour#declaring-async-functions
/// 使用 await for 关键字，通常情况下是不会使用的，因为UI层会发送事件流
main() async {
  //参照官方网站上，然后修改部分代码
  String searchPath = "/Users/zhuliya/Documents/LYStorage/QQReportEngine";
  if (await FileSystemEntity.isDirectory(searchPath)) {
    final startingDir = Directory(searchPath);
    await for (var entity in startingDir.list()) {
      if (entity is File) {
        printFile(entity);
      }
    }
  } else {
    printFile(File(searchPath));
  }
}

printFile(File file) async {
  print(file.path);
}
