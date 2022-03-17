void main() {
  print('dart fonctionne!');

  var name = "Dart";
  const a = 12;
  const pi = 3.14;
  print(a);
  print(pi);
  var list = [1, 2, 3, 4, 5];
  print(list);
  var mapping = {'id': 1, 'name': 'Dart'};
  print(mapping);
  dynamic test = "Dart";
  print(test);
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  if (name == test) {
    print("pareil");
  }
  test = "3.14";
  if (pi == test) {
    print("pareil");
  }
  add(5, 3);
}

void add(int a, int b) {
  int c;
  c = a + b;
  print(c);
}
