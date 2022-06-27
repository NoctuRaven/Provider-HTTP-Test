import 'package:providerapi/models/user_model.dart';

abstract class IUserRepository<T> {
  Future<List<dynamic>> findAllUsers();
}
