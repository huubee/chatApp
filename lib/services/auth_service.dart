import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService extends ChangeNotifier {

  // The init() method needs to be called from somewhere.
  // It has to be called before the first widget is rendered.
  // It should also be called before the Material App too.
  // The init() method will be called in main.dart before runApp => ChatApp

  static init() async {
    // this stores the SharedPreferences.getInstance() into the 'static late final' _prefs
    _prefs = await SharedPreferences.getInstance();
  }


  static late final SharedPreferences _prefs;

  // loginUser - class method
  Future<void> loginUser(String userName) async {
    try {
      _prefs.setString('userName', userName);
    } catch (e) {
      print(e);
    }
  }

  Future<bool> isLoggedIn() async {
    String? userName = await _prefs.getString('userName');
    if(userName == null) return false;
    return true;
  }

  // logoutUser - class method
  void logoutUser()  {
    _prefs.clear();
  }

  // getUserName - class method
  String? getUserName() {
    return _prefs.getString('userName') ?? 'DefaultValue';
  }

  void updateUserName(String newName) {
    _prefs.setString('userName', newName);
    notifyListeners();
  }
}