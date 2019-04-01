# StudyDart

## 目录

* [重要概念](#重要概念)
* [关键字](#关键字)
* [变量 ( Variables )](#变量 ( Variables ))
	* 默认值 ( Default value )
	* 最终和常量 ( Final and const )
* [内置类型 ( Built-in types )](内置类型)
	* numbers ( 数值类型 )
	* strings (字符串类型)
	* booleans ( 布尔类型 )
	* lists ( 列表类型 )
	* sets ( 唯一无序集合 )
	* maps ( 键值对集合 )
	* runes (表情、符号)
	* symbols (符号)
* 函数 ( Functions )
	* 可选参数 ( Optional parameters )
	* main() 函数 ( The main() function )
	* 函数作为对象传递 ( Functions as first-class objects )
	* 匿名函数 ( Anonymous functions )
	* 作用域 ( Lexical scope )
	* 闭包 ( Lexical closures )
	* 测试函数是否相等 ( Testing functions for equality )
	* 返回值 ( Return values )
* 操作符 ( Operators )
	* 分类
	* 算数运算符 ( Arithmetic operators )
	* 关系运算符 ( Equality and relational operators )
	* 类型判断符 ( Type test operators )
	* 赋值运算符 ( Assignment operators )
	* 逻辑运算符 ( Logical operators )
	* 位运算符 ( Bitwise and shift operators )
	* 条件表达式 ( Conditional expressions )
	* 级联符 ( Cascade notation )
	* 其它操作符 ( Other operators )
* 控制流语句 ( Control flow statements )
	* 判断语句 ( If and else )
	* for 循环语句 ( For loops )
	* while 和 do-while 循环语句 (While and do-while)
	* 打断和继续语句 ( Break and continue )
	* 分支语句 ( Switch and case )
	* 断言语句 ( Assert )
* 异常处理 ( Exceptions )
	* 抛出异常 ( Throw )
	* 捕获异常 ( Catch )
	* 必然执行 ( Finally )
* 类 ( Classes )
	* 成员 ( Using class members )
	* 构造器使用 ( Using constructors )
	* 获取对象运行时的类型 ( Getting an object’s type )
	* 实例变量 ( Instance variables )
	* 构造器声明 ( Constructors )
	* 方法 ( Methods )
	* 抽象方法 ( Abstract methods )
	* 抽象类 ( Abstract classes )
	* 隐式接口 ( Implicit interfaces )
	* 扩展类 ( Extending a class )
	* 枚举类型 ( Enumerated types )
	* 向类添加功能 ( Adding features to a class: mixins )
	* 类的变量和方法 ( Class variables and methods )
* 泛型 ( Generics )
	* 为什么使用泛型 ( Why use generics? )
	* 集合使用泛型 ( Using collection literals )
	* 通用集合及其包含的类型 ( Generic collections and the types they contain )
	* 泛型类型限制 ( Restricting the parameterized type )
	* 泛型在方法上的使用 ( Using generic methods )
* 库和能见度 ( Libraries and visibility )
	* 使用库 ( Using libraries )
	* 实现库 ( Implementing libraries )
* 异步 ( Asynchrony support )
	* 执行异步 ( Handling Futures )
	* 声明异步函数 ( Declaring async functions )
	* 处理流 ( Handling Streams )
* 生成器 ( Generators )
	* 同步生成器
	* 异步生成器
* 可调用的类 ( Callable classes )
* 隔离 ( Isolates )
* 类型定义 ( Typedefs )
* 元数据 ( Metadata )
* 注释 ( Comments )
	* 单行注释 ( Single-line comments )
	* 多行注释 ( Multi-line comments )
	* 文档注释 ( Documentation comments )

## [重要概念](https://www.dartlang.org/guides/language/language-tour#important-concepts)

* **可以放在变量中的所有内容都以一个对象，包括数字、函数、null 等，每个对象都是一个实例**
* **Dart 是强类型语言，但你可以类型声明时可选的，因为 Dart 可以推断出类型，如果不需要明确类型，可使用 dynamic 类型**
* **Dart 支持泛型类型，如：List<int>**
* **Dart 支持顶级函数(如：main())，以及绑定到类或对象(静态或实例方法)，也可以在函数内创建函数**
* **Dart 支持顶级变量，以及绑定到类或对象(静态或实例变量)**
* **Dart 没有访问修饰符(没有像 Java 的 public、private 关键字)，如果标识符以下划线 ( _ ) 开头，则代表为私有的。**
* **Dart 标识符是以下划线或字符开头，后面紧跟字符或数字的任意组合。**
* **Dart 同时具有表达式和语句，例如，条件表达式 ? expr1 : expr2 的值为 expr1 或expr2。如果和If-else进行比较，语句通常包含一个或多个表达式，但表达式不能直接包含语句。**
* **Dart 工具会报告警告和错误，警告仅仅是提示你代码看你不工作，并不会妨碍代码执行；错误在编译时会妨碍代码执行；错误在运行时会引发异常。**
	
## [关键字](https://www.dartlang.org/guides/language/language-tour#keywords)

由于关键字会随着 Dart 的更新而增加或删除，所以这里只放置官网链接。

[关键字](https://www.dartlang.org/guides/language/language-tour#keywords)

## [变量 ( Variables )](https://www.dartlang.org/guides/language/language-tour#variables)
	

## [内置类型 ( Built-in types )](https://www.dartlang.org/guides/language/language-tour#built-in-types)

## [函数 ( Functions )](https://www.dartlang.org/guides/language/language-tour#functions)

## [操作符 ( Operators )](https://www.dartlang.org/guides/language/language-tour#operators)

## [控制流语句 ( Control flow statements )](https://www.dartlang.org/guides/language/language-tour#control-flow-statements)

## [异常处理 ( Exceptions )](https://www.dartlang.org/guides/language/language-tour#exceptions)

## [类 ( Classes )](https://www.dartlang.org/guides/language/language-tour#classes)

## [泛型 ( Generics )](https://www.dartlang.org/guides/language/language-tour#generics)

## [库和能见度 ( Libraries and visibility )](https://www.dartlang.org/guides/language/language-tour#libraries-and-visibility)

## [异步 ( Asynchrony support )](https://www.dartlang.org/guides/language/language-tour#asynchrony-support)

## [生成器 ( Generators )](https://www.dartlang.org/guides/language/language-tour#generators)

## [可调用的类 ( Callable classes )](https://www.dartlang.org/guides/language/language-tour#callable-classes)

## [隔离 ( Isolates )](https://www.dartlang.org/guides/language/language-tour#isolates)

## [类型定义 ( Typedefs )](https://www.dartlang.org/guides/language/language-tour#typedefs)

## [元数据 ( Metadata )](https://www.dartlang.org/guides/language/language-tour#metadata)

## [注释 ( Comments )](https://www.dartlang.org/guides/language/language-tour#comments)

