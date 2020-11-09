import 'dart:io';

List<String> getss(String str) {
  if(str.length==0) {
    List<String> bres = new List();
    bres.add("");
    return bres;
  }
  String ch = String.fromCharCode(str.codeUnitAt(0));
  String ros = str.substring(1);
  List<String> rres = getss(ros);

  List<String> myans = new List();
  for(String rstr in rres) {
    myans.add('-'+ rstr);
    myans.add(ch + rstr);
  }
  return myans;
} 
void main() {
  //String str = "abc";
  String str = stdin.readLineSync();
  List<String> result = getss(str);
  print(result);
  //int c = str.codeUnitAt(1);       //98
  //print(String.fromCharCode(c));   //b
}