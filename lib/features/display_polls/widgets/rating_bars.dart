import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingBars extends StatelessWidget {
  const RatingBars({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
        height: 70,
        width:400,
        decoration: BoxDecoration(
          color: Colors.black38   ,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 2,color: Colors.orange,)),
        ),
      Positioned(
        left: 2,top: 1,bottom: 2,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.orange.withOpacity(0.7),),
            height: 69,
            width: 250,

            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Center(child:
              Text('$text',style: TextStyle(fontSize: 18,color: Colors.white),),),
            ),
          ),
      ),
      Positioned(
        top: 45,left: 30,
          child: Row(children:[ Container(height: 5,width: 250,color: Colors.orange,),
          SizedBox(width: 5,),Text('34%',style: TextStyle(color: Colors.orange),)]))]
    );
  }
}
