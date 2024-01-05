import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lafyuu_e_commerce/data/models/auth/auth_response.dart';
import 'package:lafyuu_e_commerce/utils/constants/endpoints.dart';

class RegisterService {
  Future<AuthResponse?> register({
    required String fullName,
    required String email,
    required String password,
  }) async {
    final url = Uri.parse(Endpoints.register);
    final body = {"full_name": fullName, "email": email, "password": password};
    final http.Response response = await http.post(url, body: body);
    if (response.statusCode > 199 && response.statusCode < 300) {
      final data = jsonDecode(response.body);
      return data;
    }
    return null;
  }
}
