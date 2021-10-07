import 'package:flutter/material.dart';

class CustomContactButton extends StatelessWidget {
  final String buttonText;
  final Icon icon;
  final VoidCallback onPressed;
  const CustomContactButton({
    Key? key, required this.buttonText, required this.icon, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          textStyle: TextStyle(color: Colors.blue),
          backgroundColor: Colors.white,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ), 
        ),
        onPressed: onPressed,
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('$buttonText',),
        ),
      ),
    );
  }
}