import 'dart:io';

main(List<String> args) {
  // String name = 'coderwhy';
  // int age = 18;
  // double height = 1.88;
  // print('${name}, ${age}, ${height}'); // 拼接方式后续会讲解

  // String content = 'Hello Dart';
  // content = 'Hello World'; // 正确的
  // print('${content}');
  // var name = 'coderwhy';
  // name = 'kobe';
  // print(name.runtimeType);

  // dynamic name ='coderwhy';
  // print('$name');
  // name =18;
  // print(name);

  // final name = 'lishan';
  // const age =18;
  // const time = DateTime.now();

  // final time = DateTime.now();
  // print(time);
  // sleep(Duration(seconds: 2));
  // print(time);

  //   var message = 'Hello Dart';
  // // 错误的写法
  // if (message==null) {
  //   print(message);
  // }

  // 1.定义字符串的方式
  // var s1 = 'Hello World';
  // var s2 = "Hello Dart";
  // var s3 = 'Hello\\Fullter';
  // var s4 = "Hello'Fullter";

  // print('$s1,$s2,$s3,$s4');
  var message1 = '''
  哈哈哈
  呵呵呵
  嘿嘿嘿
  ''';
  print(message1);
  // 3.拼接其他变量
  var name = 'coderwhy';
  var age = 18;
  var height = 1.88;
  print('my name is $name, age is $age, height is $height');

  // List定义
// 1.使用类型推导定义
  var letters = ['a', 'b', 'c', 'd'];
  print('$letters ${letters.runtimeType}');

// 2.明确指定类型
  List<int> numbers = [1, 2, 3, 4];
  print('$numbers ${numbers.runtimeType}');
  // Map的定义
// 1.使用类型推导定义
  var infoMap1 = {'name': 'why', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');

// 2.明确指定类型
  Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};
  print('$infoMap2 ${infoMap2.runtimeType}');

  print(letters.length);
  // print(lettersSet.length);
  print(infoMap1.length);
}
