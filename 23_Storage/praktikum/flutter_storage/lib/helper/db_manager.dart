import 'package:flutter/material.dart';
import 'package:flutter_storage/models/contact_model.dart';

import 'database_helper.dart';

class DBManager extends ChangeNotifier {
  List<ContactModel> _contactModels = [];
  late DatabaseHelper _dbHelper;

  List<ContactModel> get contactModels => _contactModels;

  DBManager() {
    _dbHelper = DatabaseHelper();
    _getAllContacts();
    notifyListeners();
  }

  void _getAllContacts() async {
    _contactModels = await _dbHelper.getTask();
    notifyListeners();
  }

  Future<void> addContact(ContactModel contactModel) async {
    await _dbHelper.insertTask(contactModel);
    _getAllContacts();
    notifyListeners();
  }

  Future<ContactModel> getContactbyId(String id) async {
    return await _dbHelper.getContactById(id);
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

  vFuture<ContactModel>(String id, ContactModel contactModel) async {
    return await _dbHelper.getContactById(id);

    _getAllContacts();
    notifyListeners();
  }
}
