// import 'package:auth_app/screens/auth_screen.dart';
import 'package:auth_app/screens/email_signin_screen.dart';
import 'package:auth_app/screens/landing_screen.dart';
import 'package:auth_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer Tracker',
      theme: ThemeData(
        backgroundColor: Colors.grey[100],
        primarySwatch: Colors.indigo,
        accentColor: Colors.yellowAccent,
      ),
      home: LandingScreen(
        auth: Auth(),
      ),
      routes: {
        EmailSignInScreen.routeName: (_) => EmailSignInScreen(),
      },
    );
  }
}
