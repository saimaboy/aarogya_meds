import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';

class AuthService {
  final storage = FlutterSecureStorage();

  Future<String?> get token async {
    return await storage.read(key: 'api_token');
  }

  Future<String> get getFirstName async {
    final token = await this.token;
    if (token != null) {
      final payload = Jwt.parseJwt(token);
      return payload['username'];
    }
    return "";
  }
}
