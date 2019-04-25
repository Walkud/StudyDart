///条件选择语句 Switch case
///https://www.dartlang.org/guides/language/language-tour#switch-and-case
main() {
  var command = 'DENIED';
  switch (command) {
    case 'CLOSED':
      print("execute closed!");
      break; //case语句体中存在其它语句时必须包含break关键字，不然编译器会报错
    case 'PENDING':
      print("execute pending!");
      break;
    case 'APPROVED': //case 语句体中不存在其他语句，可以省略break;
    case 'DENIED':
      print("execute ${command.toLowerCase()}");
      break;
    case 'OPEN':
      print("execute open!");
      return;
    default:
      print("execute default!");
  }

  //使用 continue 的用法
  const type = 1;
  switch (type) {
    case 1:
      print("execute 1");
      continue three; //执行完1后，还想执行3，可以使用continue进行跳转
    case 2:
      print("execute 2");
      break;
    three: //标记
    case 3:
      print("execute 3");
      break;
    default:
      print("execute default");
  }
}
