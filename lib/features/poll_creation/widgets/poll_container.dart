import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum polltype{MCQ,Picture,Rateit}

class PollContainer extends StatefulWidget {
  const PollContainer({super.key});


  @override
  State<PollContainer> createState() => _PollContainerState();
}

class _PollContainerState extends State<PollContainer> {
  polltype _polltype=polltype.MCQ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
          width: 100,


          decoration: BoxDecoration( 
            borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(0.3),
              border:Border.all(width: 1,color:Colors.orange.withOpacity(0.5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('MCQ',style: TextStyle(color: Colors.white.withOpacity(0.7)),),
              Text('poll',style: TextStyle(color: Colors.white.withOpacity(0.7)),),
              ListTile(leading: Radio(
                activeColor: Colors.deepOrange,
                groupValue: _polltype,
                value: polltype.MCQ,
                onChanged: (polltype? value) {
                  setState(() {
                    _polltype=value!;

                  });
                },),)
            ],
          ),
                      ),
          SizedBox(width: 30,),
          Container(
            height: 100,
            width: 100,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
                color: Colors.black38,
              border: Border.all(width: 2,color: Colors.white.withOpacity(0.3))
            ),
            child: Column(
              children: [
                Text('Picture',style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                Text('poll',style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                ListTile(leading: Radio(
                  activeColor: Colors.deepOrange,
                  groupValue: _polltype,
                  value: polltype.Picture,
                  onChanged: (polltype? value) {
                    setState(() {
                      _polltype=value!;

                    });
                  },),)
              ],
            ),

          ),
          SizedBox(width: 30,),
          Container(
            height: 100,
            width: 100,

            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(15),
                color: Colors.black45,
                border:Border.all(width: 1,color:Colors.white.withOpacity(0.5))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Rateit',style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                Text('poll',style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                ListTile(leading: Radio(
                  activeColor: Colors.deepOrange,
                  groupValue: _polltype,
                  value: polltype.Rateit,
                  onChanged: (polltype? value) {
                    setState(() {
                      _polltype=value!;

                    });
                  },),)
              ],
            ),
          )


        ],
      ),
    );
  }
}
