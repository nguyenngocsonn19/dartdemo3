class Student {

  Student(String name) {
    print("Student name is : $name");
  }

  Student.nameConst(String branch) {
    print("Branch name is : $branch");
  }
}

void main() {
  Student st1 = new Student("Alice");
  Student st2 = new Student.nameConst("Computer Science");
}
  