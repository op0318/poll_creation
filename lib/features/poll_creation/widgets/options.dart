import 'package:flutter/material.dart';

import '../../../common/widgets.dart';
class Options extends StatelessWidget {
  final TextEditingController contrller;
  const Options({super.key,required this.contrller});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: 450,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.deepOrange.withOpacity(0.3)),
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller:contrller ,
        maxLines: 3,
        decoration: InputDecoration(
          hintText: 'option',
          suffixIcon: Icon(Icons.close,color: Colors.white,),
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepOrange),
            borderRadius: BorderRadius.circular(10),
          ),

        ),

      ),

    );
  }
}
