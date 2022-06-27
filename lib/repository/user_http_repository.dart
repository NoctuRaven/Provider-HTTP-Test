import 'dart:convert';
import 'package:providerapi/models/user_model.dart';
import 'package:providerapi/interface/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository<List<UserModel>> {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final url = Uri.parse('https://62b8c7c3f4cb8d63df6280d1.mockapi.io/users');
    final response = await http.get(url);
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map((resp) => UserModel.fromMap(resp)).toList();
  }
}
