import 'package:shared_preferences/shared_preferences.dart';

class AuthService {

  // this stores the SharedPreferences.getInstance() into the Future _prefs
  final Future<SharedPreferences> _prefs =  SharedPreferences.getInstance();

  // loginUser method
  Future<void> loginUser(String userName) async {
    try {
      SharedPreferences sharedPrefs = await _prefs;
      sharedPrefs.setString('userName', userName);
    } catch (e) {
      print(e);
    }
  }

  // logoutUser method
  void logoutUser() async {
    SharedPreferences sharedPrefs = await _prefs;
    sharedPrefs.clear();
  }

  // getUserName method
  Future<String?> getUserName() async {
    SharedPreferences sharedPrefs = await _prefs;
    return sharedPrefs.getString('userName') ?? 'DefaultValue';
  }
}