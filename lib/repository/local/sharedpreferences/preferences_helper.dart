import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../util/debug.dart';

class SharedPreferencesHelper{
  static const String demoKey = "DEMO_KEY";
  static const String userAccountSaved = "userAccountSaved";
  late SharedPreferences _sharedPreferences;

  factory SharedPreferencesHelper(){
    return SharedPreferencesHelper._initialState();
  }

  SharedPreferencesHelper._initialState() {
      _preloadData();
  }

  Future<void> _preloadData() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }


  Future<bool> saveData(String key, Object value) async {
    try {
      final savedData = json.encode(value);
      return _sharedPreferences.setString(key, savedData);
    } catch (e) {
      Debug.logMessage(message: e);
      return Future<bool>.value(true);
    }
  }

  Future<dynamic> readData(String key) async {
    final value = _sharedPreferences.getString(key);
    if (value == null || value.isEmpty) {
      return null;
    } else {
      return json.decode(value);
    }
  }
}