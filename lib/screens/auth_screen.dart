import 'package:auth_app/screens/email_signin_screen.dart';
import 'package:auth_app/services/auth.dart';
import 'package:flutter/material.dart';
import '../widgets/sign_in_button.dart';

class AuthScreen extends StatelessWidget {
  final AuthBase auth;

  AuthScreen({this.auth});

  Future<void> _signInAnonymously() async {
    try {
      auth.signInAnonymously();
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      auth.signInWithGoogle();
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> _signInWithFacebook() async {
    try {
      auth.signInWithFacebook();
    } catch (error) {
      print(error.toString());
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).pushNamed(EmailSignInScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 80),
            SignInButton(
              title: 'Sign in with Google',
              leadingIcon: 'assets/images/google-logo.png',
              colorButton: Colors.white,
              onPress: _signInWithGoogle,
            ),
            SizedBox(height: 8),
            SignInButton(
              title: 'Sign in with Faceboook',
              leadingIcon: 'assets/images/facebook-logo.png',
              colorButton: Colors.blue,
              onPress: _signInWithFacebook,
            ),
            SizedBox(height: 8),
            SignInButton(
              title: 'Sign in with email',
              colorButton: Colors.green,
              onPress: () => _signInWithEmail(context),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('OR'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            SignInButton(
              title: 'Go Anonymous',
              colorButton: Colors.yellow[200],
              onPress: _signInAnonymously,
            )
          ],
        ),
      ),
    );
  }
}
