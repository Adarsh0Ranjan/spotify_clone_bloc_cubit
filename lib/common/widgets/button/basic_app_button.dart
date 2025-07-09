import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double height;
  const BasicAppButton({
    super.key,
    required this.label,
    this.onPressed,
    this.height = 90,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(92)),
      child: Text("Get Started", style: TextStyle(color: Colors.white)),
    );
  }
}
