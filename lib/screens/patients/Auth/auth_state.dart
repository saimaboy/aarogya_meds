import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  AuthProvider() {
    checkLoggedInStatus();
  }

  Future<void> checkLoggedInStatus() async {
    final storage = FlutterSecureStorage();
    final token = await storage.read(key: 'api_token');
    _isLoggedIn = token != null;
    notifyListeners();
  }

  Future<void> login() async {
    // Perform login logic
    _isLoggedIn = true;
    notifyListeners();
  }

  Future<void> logout() async {
    final storage = FlutterSecureStorage();
    await storage.delete(key: 'api_token');
    _isLoggedIn = false;
    notifyListeners();
  }
}
