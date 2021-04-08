import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String title;
  final String leadingIcon;
  final Color colorButton;
  final Function onPress;

  SignInButton({
    this.title,
    this.leadingIcon,
    this.colorButton,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leadingIcon != null
              ? Image.asset(leadingIcon)
              : Opacity(
                  opacity: 0,
                  child: Image.asset('assets/images/google-logo.png'),
                ),
          Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
          leadingIcon != null
              ? Opacity(
                  opacity: 0,
                  child: Image.asset(leadingIcon),
                )
              : Opacity(
                  opacity: 0,
                  child: Image.asset('assets/images/google-logo.png'),
                ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: colorButton,
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
