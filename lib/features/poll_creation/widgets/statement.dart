import 'package:flutter/material.dart';
class Statement extends StatelessWidget {
  Statement({super.key,required this.statement,required this.text});
   final TextEditingController statement;
   final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(


      width:double.infinity,
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller: statement,

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
