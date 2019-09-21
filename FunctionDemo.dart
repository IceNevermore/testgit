main(List<String> args) {
  // 1.将函数赋值给一个变量
  var bar = foo;
  print(bar.runtimeType);
  print(bar);

  // 2.将函数作为另一个函数的参数
  test(foo);

  // 3.将函数作为另一个函数的返回值
  var func =getFunc();
  func('kobe');


  // 1.定义数组
  var movies = ['盗梦空间', '星际穿越', '少年派', '大话西游'];

  // 2.使用forEach遍历: 有名字的函数
  printElement(item) {
    print(item);
  }
  movies.forEach(printElement);

  // 3.使用forEach遍历: 匿名函数
  movies.forEach((item) {
    print(item);
  });
  movies.forEach((item) => print(item));
}

// 1.定义一个函数
foo(String name) {
  print('传入的name:$name');
}

// 2.将函数作为另外一个函数的参数
test(Function func) {
  func('coderwhy');
}

// 3.将函数作为另一个函数的返回值
getFunc() {
  return foo;
}