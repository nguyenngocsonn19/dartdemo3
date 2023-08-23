class Employee{

  late String eName;
  String get ename{
    return eName;
  }

  set ename(String name){
    this.eName = name;
  }
}

void main(){
  Employee emp = new Employee();
  emp.ename = 'Jeff';
  print('employee name is : ${emp.eName}');
}