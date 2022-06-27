import 'package:flutter/material.dart';
import 'package:providerapi/interface/i_user_repository.dart';
import 'package:providerapi/models/user_model.dart';
import 'package:providerapi/components/list_homepage_component.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Future<List<UserModel>> futureUserModel;

  @override
  void initState() {
    super.initState();
    futureUserModel = context.read<IUserRepository>().findAllUsers() as Future<List<UserModel>>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider+http test'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<UserModel>>(
          future: futureUserModel,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Erro');
            }
            if (snapshot.hasData) {
              return ListHomepageComponent(snapshot.data!);
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
