import 'dart:io';

void display(var arr) {
  for(int i=0; i<arr.length; i++) {
    String line = "";
    for(int j=0; j<arr[i].length; j++) {
      line += arr[i][j].toString() + " ";
    }
    print(line);
  }
}
void input(var arr) {
  for(int i=0; i<arr.length; i++) {
    for(int j=0; j<arr[i].length; j++) {
      arr[i][j] = int.parse(stdin.readLineSync());
    }
  }
  display(arr);
}
void main() {
  int r = int.parse(stdin.readLineSync());
  int c = int.parse(stdin.readLineSync());
  var arr = List.generate(r, (index) => List(c));
  //var arr = List.generate(r, (index) => {index==0? List(c):List(c+1)});    (Configure)
  print(arr);
  input(arr);
}
