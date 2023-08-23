import 'dart:collection';


base class Item extends LinkedListEntry<Item>{
  late final int  id;
  late final String name;

  Item(this.id, this.name);

  @override
  String toString(){
    return '$id :$name';
  }

}
void main(){
  // snippet1
  List list1 =  List.filled(2,[]);
  list1[0] = 50;
  list1[1] = 100;
  print(list1);

  //snippet2
  var newlist = [10,20,30,40,50];
  newlist.add(60);
  print(newlist);

  //snippet3
  Set s = new Set();
  s.add(10);
  s.add(20);
  s.add(30);
  s.add(40);
  s.add(50);
  s.add(6);
  print(s);

  //snippet4
  var userdetails = {'email' : 'jack@gmail.com', 'Password' : '123456'};
  print(userdetails);

  //snippet5
  var details = new Map();
  details['username'] = 'ron';
  details['password'] = '1234';
  print(details);

  //snippet6

  Set<int> numbers = HashSet<int>();
  numbers.add(10);
  numbers.add(20);
  numbers.add(30);
  numbers.add(40);
  numbers.add(50);
  print(numbers);

  //snippet7
  Map detailss = HashMap();
  detailss['name'] = 'dan';
  detailss['email'] = 'dna@gmail.com';
  detailss['number'] = '1323123';
  print(detailss);

  //snippet8
//tao 1 danh sach liien ket
  final linkedList = LinkedList<Item>();

  // them cac phan tu vao danh sach lien ket

  final item1 = Item(1, 'Son');
  final item2 = Item(2, 'Hai');
  final item3 = Item(3, 'nhat anh');

  linkedList.add(item1);
  linkedList.add(item3);
  linkedList.add(item2);

  //hien thi danh sach lien ket
  for(var item in linkedList) {
    print(item);
  }

  //snippet9
  var ll = new LinkedHashMap();
  ll['1'] = 'Jinix';
  ll['2'] = 'Jhin';
  ll['3'] = 'chogat';
  ll['4'] = 'kaisa';
  print(ll);

  //snippet 10
  var il = new LinkedHashSet();
  il.add('cho');
  il.add('late');
  il.add('pie');
  print(il);

  //snippet11
  List lt = List.generate(2, (_) => List.generate(2,(_)=>0));
  print(lt);
  List ltt = List.generate(3, (_) => List.generate(3,(_)=>0));
  print(ltt);

  //snippet13
  int a = 5;
  int b = 0;
  int res;
  try{
    res =a~/b;

  }on IntegerDivisionByZeroException{
    print('Cannot divide by zero');
  }finally{
    print('Finally block excuted');
  }

//snippet14:
void checkAge(int age){
    int age = 10;
    if(age<0){
      throw new FormatException();
    }
    if(age >= 1){
      print('hello');
    }
    if(age == 5){
      print('you are 5');
    }

}try{
    checkAge(-10);
  }
  catch(e){
    print('Age cannot be negative');
  }

  



 }