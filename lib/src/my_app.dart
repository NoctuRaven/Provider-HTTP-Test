import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapi/interface/i_user_repository.dart';
import 'package:providerapi/pages/home_page.dart';
import 'package:providerapi/repository/user_http_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Provider<IUserRepository>(
        create: ((context) => UserHttpRepository()),
        child: const HomePage(),
      ),
    );
  }
}
