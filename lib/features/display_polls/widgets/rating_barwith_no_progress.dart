import 'package:flutter/material.dart';

class RatingBarWithNoProgress extends StatelessWidget {
  final String option;
  const RatingBarWithNoProgress({super.key,required this.option});


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
                padding: const EdgeInsets.only(left: 15),
                child: Center(child: Text('${option}',style: TextStyle(fontSize: 18,color: Colors.white),),),
              ),
            ),
          ),
            ]
    );
  }
}
