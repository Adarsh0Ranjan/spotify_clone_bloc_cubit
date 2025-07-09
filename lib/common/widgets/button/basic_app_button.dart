import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  const BasicAppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(92)),
      child: Text("Get Started", style: TextStyle(color: Colors.white)),
    );
  }
}
