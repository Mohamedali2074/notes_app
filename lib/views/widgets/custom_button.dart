import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.text});

  //  VoidCallback? onTap;

  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
