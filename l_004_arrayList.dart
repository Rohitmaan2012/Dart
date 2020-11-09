void main() {
  var list = new List();
  list.add(10);
  list.add(20);
  list.addAll([30,40]);
  print(list);

  list.insert(2,400);
  print(list);

  list[2] = 4000;
  print(list);

  list.removeAt(2);
  print(list);
}