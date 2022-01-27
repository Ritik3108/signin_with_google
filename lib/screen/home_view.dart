// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_web_firebase_googe_auth/service/flutter_auth_service.dart';
import 'package:flutter_web_firebase_googe_auth/model/user.dart';

import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage:
                Image.network('${context.watch<User>().photoUrl}').image,
            radius: 100,
          ),
          Text(
            '${context.watch<User>().displayName}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 100,
            height: 30,
          ),
          Text(
            '${context.watch<User>().email}',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 100,
            height: 30,
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.green,
            onPressed: () {
              context.read<FirebaseAuthService>().signOut();
            },
            child: Text("SIGN OUT"),
          ),
        ],
      ),
    ));
  }
}
