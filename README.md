# 学习 Dart 记录与心得

首先我想说的是，尽可能的去看[官方文档](https://www.dartlang.org/)，没想象中那么难。on 和 no 都会认错的我，报了100天的某学习平台的英语后，强迫自己去看原著，之后硬着头皮去看的 Dart 官方文档，逐字逐句的去翻译理解(笨方法)，再跟着文档敲代码，这样持续了有1个多月基础知识差不多就看完了，随后我又根据文档的排版 + 自己的理解做了一个思维导图，最后根据思维导图开始了学习点滴与心得的记录。

在这学习的途中有很多次的想放弃，但庆幸的是我坚持过来了，虽然还没有整体完成，但大致的框架已经出来了，获得了一点小成就感，提升了不少动力让我继续记录，感谢自己。


## 目录

* [重要概念](./resource/md/重要概念.md)
* [关键字](https://www.dartlang.org/guides/language/language-tour#keywords)
* [变量 ( Variables )](./resource/md/变量.md)
	* 默认值 ( Default value )
	* 最终和常量 ( Final and const )
* [内置类型 ( Built-in types )](./resource/md/内置类型.md)
	* numbers ( 数值类型 )
	* strings ( 字符串类型 )
	* booleans ( 布尔类型 )
	* lists ( 列表类型 )
	* sets ( 唯一无序集合 )
	* maps ( 键值对集合 )
	* runes ( 表情、符号 )
	* symbols ( 符号 )
* [函数 ( Functions )](./resource/md/函数.md)
	* 可选参数 ( Optional parameters )
	* main() 函数 ( The main() function )
	* 函数作为对象传递 ( Functions as first-class objects )
	* 匿名函数 ( Anonymous functions )
	* 作用域 ( Lexical scope )
	* 闭包 ( Lexical closures )
	* 测试函数是否相等 ( Testing functions for equality )
	* 返回值 ( Return values )
* [操作符 ( Operators )](./resource/md/操作符.md)
	* 算数运算符 ( Arithmetic operators )
	* 关系运算符 ( Equality and relational operators )
	* 类型判断符 ( Type test operators )
	* 赋值运算符 ( Assignment operators )
	* 逻辑运算符 ( Logical operators )
	* 位运算符 ( Bitwise and shift operators )
	* 条件表达式 ( Conditional expressions )
	* 级联符 ( Cascade notation )
	* 其它操作符 ( Other operators )
	* 分类
* [控制流语句 ( Control flow statements )](./resource/md/控制流语句.md)
	* 判断语句 ( If and else )
	* for 循环语句 ( For loops )
	* while 和 do-while 循环语句 (While and do-while)
	* 打断和继续语句 ( Break and continue )
	* 开关语句 ( Switch and case )
	* 断言语句 ( Assert )
* [异常处理 ( Exceptions )](./resource/md/异常处理.md)
	* 抛出异常 ( Throw )
	* 捕获异常 ( Catch )
	* 必然执行 ( Finally )
	* 自定义异常
* [类 ( Classes )](./resource/md/类.md)
	* 成员 ( Using class members )
	* 构造器使用 ( Using constructors )
	* 获取对象运行时的类型 ( Getting an object’s type )
	* 实例变量 ( Instance variables )
	* 构造器声明 ( Constructors )
	* 方法 ( Methods )
	* 抽象类 ( Abstract classes )
	* 隐式接口 ( Implicit interfaces )
	* 类继承 ( Extending a class )
	* 枚举类型 ( Enumerated types )
	* 向类添加功能 ( Adding features to a class: mixins )
	* 类的变量和方法 ( Class variables and methods )
* [泛型 ( Generics )](./resource/md/泛型.md)
	* 为什么使用泛型 ( Why use generics? )
	* 集合使用泛型 ( Using collection literals )
	* 使用带有构造器的参数化类型 ( Using parameterized types with constructors )
	* 通用集合及其包含的类型 ( Generic collections and the types they contain )
	* 泛型类型限制 ( Restricting the parameterized type )
	* 泛型在方法上的使用 ( Using generic methods )
* [库和可见性 ( Libraries and visibility )](./resource/md/库和可见性.md)
	* 使用库 ( Using libraries )
	* 实现库 ( Implementing libraries )
* [异步 ( Asynchrony support )](./resource/md/异步.md)
	* 操作 Future ( Handling Futures )
	* 声明异步函数 ( Declaring async functions )
	* 操作 Stream ( Handling Streams )
* [生成器 ( Generators )](./resource/md/生成器.md)
	* 同步生成器
	* 异步生成器
	* 生成器性能问题
* [可调用的类 ( Callable classes )](./resource/md/可调用的类.md)
* [隔离 ( Isolates )](./resource/md/隔离.md)
* [类型定义 ( Typedefs )](./resource/md/类型定义.md)
* [元数据 ( Metadata )](./resource/md/元数据.md)
* [注释 ( Comments )](./resource/md/注释.md)
	* 单行注释 ( Single-line comments )
	* 多行注释 ( Multi-line comments )
	* 文档注释 ( Documentation comments )


经过近三个月的学习，终于把 Dart 概览部分学习完成并记录形成自己的东西，为自己点赞。

## 参考

[Dart 消息循环机制（官网）](https://dart.dev/articles/archive/event-loop)

[Dart 消息循环机制（翻译）](https://www.jianshu.com/p/7549b63a72d7)

[Dart 语言的介绍 (可大致了解 Dart由来)](https://www.yoytang.com/dart-intro.html)

[Future简单科普](https://segmentfault.com/a/1190000014396421)
