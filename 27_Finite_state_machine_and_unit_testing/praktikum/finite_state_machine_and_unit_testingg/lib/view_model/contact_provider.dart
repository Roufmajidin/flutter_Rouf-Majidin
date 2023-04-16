import 'dart:developer';

import 'package:flutter/material.dart';

import '../models/contact_model.dart';
import '../helper/database_helper.dart';

// enum contact
enum ContactState { none, loading, loaded, error }

class ContactProvider extends ChangeNotifier {
  // state awal
  ContactState _state = ContactState.none;
  // getter dari state
  ContactState get state => _state;

  List<ContactModel> _contactModels = [];
  late DatabaseHelper _dbHelper;

  List<ContactModel> get contactModels => _contactModels;

  // objek enum{}
  changeState(ContactState s) {
    _state = s;
    notifyListeners();
  }

  void _getAllContacts() async {
    changeState(ContactState.loaded);
    _contactModels = await _dbHelper.getTask();
    notifyListeners();
  }

  addContact(ContactModel contactModel) async {
    await _dbHelper.insertTask(contactModel);
    _getAllContacts();
    notifyListeners();
  }

  ContactProvider() {
    _dbHelper = DatabaseHelper();
    _getAllContacts();
    notifyListeners();
  }

  void updateContact(String id, ContactModel contactModel) async {
    await _dbHelper.updateContact(id, contactModel);
    _getAllContacts();
    notifyListeners();
  }

  void deleteContact(String id, ContactModel contactModel) async {
    await _dbHelper.deleteContact(id, contactModel);

    _getAllContacts();
    notifyListeners();
  }

  Future<ContactModel>(String id, ContactModel contactModel) async {
    return await _dbHelper.getContactById(id);
  }
}
