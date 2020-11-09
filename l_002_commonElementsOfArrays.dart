import 'dart:io';

void display1(var arr) {
  for(var r in arr) {
    print(r);
    //stdout.write(r);
    //stdout.write(' ');
  }
  //print;
}
// void display2(var arr) {
//   for(int i=0; i<arr.length; i++) {
//     print(arr[i]);
//   }
//   print;
// }
void input(var arr) {
  for(int i=0; i<arr.length; i++) {
    arr[i] = int.parse(stdin.readLineSync());
  }
  display1(arr);
}
void commonElements(var one, var two) {
  for(int i=0; i<one.length; i++) {
    for(int j=0; j<two.length; j++) {
      if(one[i]==two[j]) {
        print(one[i]);
        break;
      }
    }
  }
}
main() {
  int n1 = int.parse(stdin.readLineSync());
  var one = new List(n1);
  input(one);
  int n2 = int.parse(stdin.readLineSync());
  var two = new List(n2);
  input(two);
  commonElements(one,two);
}