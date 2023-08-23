import 'dart:async';

void main(){
  //snippet4
  Future<int> getFuture(){
    return Future.error("this is an error");
  }
  getFuture();
}