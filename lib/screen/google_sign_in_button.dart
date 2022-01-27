import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart' as buttons;
import 'package:flutter_web_firebase_googe_auth/service/flutter_auth_service.dart';
import 'package:provider/provider.dart';



class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buttons.GoogleSignInButton(
      onPressed: () {
        context.read<FirebaseAuthService>().signInWithGoogle();

        
        context.read<FirebaseAuthService>().currentUser();
      },
      darkMode: true,
      textStyle: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
    );
  }
}
