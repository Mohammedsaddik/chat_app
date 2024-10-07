import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color borderColor;
  Function(String)? onChange;
  CustomTextField({
    Key? key,
    required this.hintText,
    this.onChange,
    this.borderColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: borderColor),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
          ),
        ),
      ),
    );
  }
}
