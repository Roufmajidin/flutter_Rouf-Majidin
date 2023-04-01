import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:validators/validators.dart';

import '../models/model_contacts.dart';

class FormManager with ChangeNotifier {
  final List<GetContact> _contacts = [
    GetContact(name: "Rouf Majidin", phoneNumber: "6283133978010")
  ];
  var name = '';
  var phoneNumber = '';
  int indexName = 0;

  get contacts => _contacts;

  void changeString(namee, phonee) {
    name = namee;
    phoneNumber = phonee;
    // print(namee.toString().contains("+"));
    print(phonee);
    notifyListeners();
  }

  void add(GetContact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void pilihYangAkanDiedit(name, phone) {
    print(name);
  }

  void update(index, name, phoneNumber) {
    _contacts[index].name = name;

    _contacts[index].phoneNumber = phoneNumber.toString();
    // print();

    notifyListeners();
  }

  void deleteContact(index) {
    _contacts.removeAt(index);

    notifyListeners();
  }

  // notifyListeners();
}
