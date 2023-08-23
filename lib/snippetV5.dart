void main(){
  Student s1 = new Student('101');
}

class Student{
  var std;
  Student(var std) {
   this.std = std;
    print("Dart this key Example");
    print("Student ID is : ${std}");
  }
}