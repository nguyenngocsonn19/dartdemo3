import 'dart:io';
import 'dart:async';


//snippet 2:
void main() async{

  demo() async{
    print("good morning");
  }
  await demo();
  print("have a great day! :)");



  File file = new File(Directory.current.path + "/names.txt");
  Future<String> f = file.readAsString();

  f.then((data)=>print(data));
  print("main ends here");

//snippet3
var myfutureval = Future.value(14);
print(myfutureval);






}