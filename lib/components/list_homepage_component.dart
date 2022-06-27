import 'package:flutter/material.dart';
import 'package:providerapi/models/user_model.dart';

class ListHomepageComponent extends StatelessWidget {
  final List<UserModel> _users;
  const ListHomepageComponent(this._users, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(
              height: 30,
              color: Colors.grey,
            ),
        itemCount: _users.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Image.network(
                  _users[index].avatar,
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('User Name: ${_users[index].name}'),
                    const SizedBox(
                      height: 30,
                    ),
                    Text('ID:${_users[index].id}'),
                  ],
                )
              ],
            ),
          );
        });
  }
}
