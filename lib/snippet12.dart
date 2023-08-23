void main(){
  var num = 0;
  print('Dart continue statement');
  while(num <10){
    num += 1;
    if(num == 5){
      print('5 is skipped');
      continue;
    }
    print('number is ${num}');
  }
  print('out of while loop');
}