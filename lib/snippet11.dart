
void main() {
  var count = 0;
  print('Dart break statement');

  while(count <= 10){
    count += 1;
    if(count == 5) {
      break;

    }
    print('inside loop ${count}');
  }
  print('out of while');

}