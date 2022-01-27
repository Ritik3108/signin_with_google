import 'package:flutter/material.dart';
import 'package:flutter_web_firebase_googe_auth/screen/app.dart';
import 'package:flutter_web_firebase_googe_auth/service/flutter_auth_service.dart';
import 'package:provider/provider.dart';



void main() => runApp(
  
      MultiProvider(
        providers: [
          Provider(
            create: (_) => FirebaseAuthService(),
          ),
          StreamProvider(
            create: (context) =>
                context.read<FirebaseAuthService>().onAuthStateChanged,
          ),
        ],
        child: MyApp(),
      ),
    );
