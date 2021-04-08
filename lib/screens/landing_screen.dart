import 'package:auth_app/screens/auth_screen.dart';
import 'package:auth_app/screens/home_screen.dart';
import 'package:auth_app/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  final AuthBase auth;
  User user;

  LandingScreen({this.auth});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
        stream: auth.authStateChange(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User user = snapshot.data;
            if (user == null) {
              return AuthScreen(
                auth: auth,
              );
            }
            return HomeScreen(
              auth: auth,
            );
          }
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        });
  }
}
