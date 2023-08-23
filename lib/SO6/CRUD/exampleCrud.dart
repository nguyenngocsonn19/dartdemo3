
import 'dart:io';
class Contact{
  late String name;
  late String phoneNumber;

  Contact(this.name,this.phoneNumber);
}

class AddressBook{
  List<Contact> contacts = [];

  void addContact(Contact contact){
    contacts.add(contact);
  }

  void removeContact(String name){
    contacts.removeWhere((contact) => contact.name == name);
  }

  void displayContacts(){
    if (contacts.isEmpty){
      print("contact is empty");
    }else{
      print("Contact:");
      for(var contact in contacts){
        print("Name : ${contact.name}, phoneNumber: ${contact.phoneNumber}");
      }
    }
  }
}

void main(){
  var addressBook = AddressBook();

  while(true){
    print("1, Add contact");
    print("2, Remove Contact");
    print("3, Display Contact");
    print("4, Exit");

    var readLineSync = stdin.readLineSync();
    var choice = int.parse(readLineSync!);

    switch (choice){
      case 1 :
        print("Enter name contact:");
        var name = stdin.readLineSync();
        print("Enter the number phone");
        var phoneNumber = stdin.readLineSync();
        var contact = Contact(name!,phoneNumber!);
        addressBook.addContact(contact);
        print("Contact added");
        break;
      case 2:
        print("Enter the name contact is delete:");
        var name = stdin.readLineSync();
        addressBook.removeContact(name!);
        print("Contact is removed");
        break;
      case 3:
        addressBook.displayContacts();
        break;
      case 4 :
        print("Exit program");
        return;
      default:
        print("Choose not found");



    }
  }
}