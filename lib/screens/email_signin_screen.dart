import 'package:auth_app/widgets/email_sign_in_form.dart';
import 'package:flutter/material.dart';

class EmailSignInScreen extends StatelessWidget {
  static const String routeName = '/sign_in_email';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Tracer'),
        elevation: 2,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: EmailSignInForm(),
          )),
      backgroundColor: Colors.grey[200],
    );
  }
}
