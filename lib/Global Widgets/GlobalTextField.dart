import 'package:flutter/material.dart';

class GlobalTextField extends StatelessWidget {
final String label;
final String hint;
final control;
 
 GlobalTextField(this.hint, this.label, this.control);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: control,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
        
      )),
    );
  }
}