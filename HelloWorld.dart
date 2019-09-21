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
  // var message1 = '''
  // 哈哈哈
  // 呵呵呵
  // 嘿嘿嘿
  // ''';
  // print(message1);
  // // 3.拼接其他变量
  // var name = 'coderwhy';
  // var age = 18;
  // var height = 1.88;
  // print('my name is $name, age is $age, height is $height');

  // List定义
  // 1.使用类型推导定义
  // var letters = ['a', 'b', 'c', 'd'];
  // print('$letters ${letters.runtimeType}');

  // 2.明确指定类型
  List<int> numbers = [1, 2, 3, 4];
  print('$numbers ${numbers.runtimeType}');
  // Map的定义
// 1.使用类型推导定义
  var infoMap1 = {'name': 'why', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');

// 2.明确指定类型
  // Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};
  // print('$infoMap2 ${infoMap2.runtimeType}');
  // print(letters.length);
  // // print(lettersSet.length);
  // print(infoMap1.length);

  // 添加/删除/包含元素
  numbers.add(5);
  // numbersSet.add(5);
  print('$numbers');
  numbers.remove(1);
// numbersSet.remove(1);
  print('$numbers');

  // Set的定义
// 1.使用类型推导定义
  var lettersSet = {'a', 'b', 'c', 'd'};
  print('$lettersSet ${lettersSet.runtimeType}');

// 2.明确指定类型
  Set<int> numbersSet = {1, 2, 3, 4};
  print('$numbersSet ${numbersSet.runtimeType}');

  // Map的操作
// 1.根据key获取value
  print(infoMap1['name']); // why

// 2.获取所有的entries
  print(
      '${infoMap1.entries} ${infoMap1.entries.runtimeType}'); // (MapEntry(name: why), MapEntry(age: 18)) MappedIterable<String, MapEntry<String, Object>>

// 3.获取所有的keys
  print(
      '${infoMap1.keys} ${infoMap1.keys.runtimeType}'); // (name, age) _CompactIterable<String>

// 4.获取所有的values
  print(
      '${infoMap1.values} ${infoMap1.values.runtimeType}'); // (why, 18) _CompactIterable<Object>

// 5.判断是否包含某个key或者value
  print(
      '${infoMap1.containsKey('age')} ${infoMap1.containsValue(18)}'); // true true

// 6.根据key删除元素
  infoMap1.remove('age');
  print('${infoMap1}'); // {name: why}

  // 调用printInfo1函数
  printInfo1('why'); // name=why age=null height=null
  printInfo1('why', age: 18); // name=why age=18 height=null
  printInfo1('why', age: 18, height: 1.88); // name=why age=18 height=1.88
  printInfo1('why', height: 1.88); // name=why age=null height=1.88

  // 调用printInfo2函数
  printInfo2('why'); // name=why age=null height=null
  printInfo2('why', 18); // name=why age=18 height=null
  printInfo2('why', 18, 1.88); // name=why age=18 height=1.88

  printInfo4('lishan');
}

int sum(num num1, num num2) {
  return num1 + num2;
}

// 命名可选参数
printInfo1(String name, {int age, double height}) {
  print('name=$name age=$age height=$height');
}

// 定义位置可选参数
printInfo2(String name, [int age, double height]) {
  print('name=$name age=$age height=$height');
}

// 参数的默认值
printInfo4(String name, {int age = 18, double height=1.88}) {
  print('name=$name age=$age height=$height');
}
