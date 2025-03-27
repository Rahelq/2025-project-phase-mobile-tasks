import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';
import 'dart:convert';

class StorageService {
  Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    String userData = json.encode({'name': user.name, 'email': user.email});
    await prefs.setString('savedUser', userData);
  }

  Future<User?> getSavedUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? userData = prefs.getString('savedUser');

    if (userData != null) {
      Map<String, dynamic> jsonData = json.decode(userData);
      return User(id: 0, name: jsonData['name'], email: jsonData['email']);
    }
    return null;
  }
}
