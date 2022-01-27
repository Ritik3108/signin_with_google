import 'package:flutter/material.dart';
import 'package:flutter_web_firebase_googe_auth/screen/sign_in_view.dart';
import 'package:flutter_web_firebase_googe_auth/model/user.dart';
import 'package:flutter_web_firebase_googe_auth/screen/home_view.dart';
import 'package:provider/provider.dart';



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Material App',

      
      home: Consumer<User>(

        builder: (_, user, __) {
          if (user == null) {
            return const SignInView();
           //return Text("not signed in");
          } else {
            return const HomeView();
                     //  return Text("signed in");

          }
        },
      ),
    );
  }
}
