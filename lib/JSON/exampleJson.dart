
import 'dart:convert';
import 'dart:io';
class Contact {
  late final String name;
  late final int age;

  Contact(this.name, this.age);
}
  
  void main(){
    File file = new File(Directory.current.path + "/contact.json");

    if(!file.existsSync()){
      print("file not found");
      return;
    }
    String fileContent = file.readAsStringSync();

    try {
      List<dynamic> jsonContacts = json.decode(fileContent);

      List<Contact> contacts = jsonContacts.map((jsonContact) {
        return Contact(jsonContact['name'], jsonContact['age']);
      }).toList();

      for (var contact in contacts) {
        print("Name : ${contact.name}");
        print("Age : ${contact.age}");
        print(""); //empty line for separation
      }

      }catch(e){
      print("error decoding Json : $e");
    }
    }

