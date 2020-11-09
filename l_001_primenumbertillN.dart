import 'dart:io';

void primeNumberTillN(var num) {
  //var num = 100;    //int num = 100;
  for(var n=1; n<=num; n++) {              
    bool flag = false;
    for(int div =2; div*div <= n; div++) {
      if(n%div == 0) {
        flag = true;
        break;
      } 
    }
    if(flag == false) {
      print(n); 
    }
  }
}
main() {
  var line = stdin.readLineSync();
  var num = int.parse(line);
  //print(line);
  primeNumberTillN(num);
}