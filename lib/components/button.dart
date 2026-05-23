import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;

  const Button({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        enabledMouseCursor: SystemMouseCursors.click,
        backgroundColor: Colors.red,
        overlayColor: Colors.white,
        fixedSize: Size(320, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}