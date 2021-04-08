import 'package:flutter/material.dart';
import '../services/auth.dart';

class HomeScreen extends StatelessWidget {
  final AuthBase auth;
  const HomeScreen({this.auth});

  Future<void> _signOut() async {
    try {
      await auth.signOut();
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          TextButton(
            onPressed: _signOut,
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Center(),
    );
  }
}
