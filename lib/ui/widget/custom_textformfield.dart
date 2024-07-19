// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
  String hintText;
  TextInputType textInputType;
  CustomTextformfield({
    super.key,
    required this.hintText,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 3),
              spreadRadius: 1,
              blurRadius: 3)
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xff767372), fontSize: 12),
        ),
      ),
    );
  }
}
