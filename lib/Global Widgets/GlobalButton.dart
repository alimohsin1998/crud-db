import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  final color;
  final String text;
  final navigation;
  
  GlobalButton(
    this.color,
    this.text,
    this.navigation,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: navigation,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(text, style: TextStyle(fontSize: 18.0, color: Colors.white),),
      ),
    );
  }
}