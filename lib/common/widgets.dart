import 'package:flutter/material.dart';


class Textfield extends StatelessWidget {
  const Textfield({super.key,required this.text,required this.controller});
  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(


      width:double.infinity,
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller: controller,

        maxLines: 3,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.yellow),
              borderRadius: BorderRadius.circular(10),
          ),

        ),

      ),
    );
  }
}
