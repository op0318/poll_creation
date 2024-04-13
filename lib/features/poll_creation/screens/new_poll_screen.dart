import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poll_creation/constants/global_variables.dart';
import 'package:poll_creation/features/poll_creation/widgets/options.dart';
import 'package:poll_creation/features/poll_creation/widgets/poll_container.dart';
import 'package:poll_creation/features/poll_creation/widgets/statement.dart';

import '../../../common/widgets.dart';
import '../../../model/data.dart';
import '../services/Poll_Services.dart';

class CreateNewPoll extends StatefulWidget {
  const CreateNewPoll({super.key});




  @override
  State<CreateNewPoll> createState() => _CreateNewPollState();
}

class _CreateNewPollState extends State<CreateNewPoll> {
  PollServices pollcreation=PollServices();

  TextEditingController _topicControlller=TextEditingController();
  TextEditingController _statementControlller=TextEditingController();

  TextEditingController _option1=TextEditingController();
  TextEditingController _option2=TextEditingController();
  TextEditingController _option3=TextEditingController();
  TextEditingController _option4=TextEditingController();

  List<Data> data=[];

  @override
  void initState()
  {
    super.initState();
  }

  void createNewPoll()async
  {
    pollcreation.createNewPoll(context: context,
        topic: _topicControlller.text,
        statement: _statementControlller.text,
        option1: _option1.text,
        option2: _option2.text, option3: _option3.text,
        option4: _option4.text);
  }

  void getAllpoles()async
  {
    data= await pollcreation.GetAllPoll(context: context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: Text('Moderators poll',style: TextStyle(
            fontSize: 29,
              fontWeight: FontWeight.bold,
          color: Colors.white),),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient:GlobalVariables.appBarGradient
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Center(child: Text('Create Poll',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  color: Colors.white
        
        
                ),),),
              ),
              SizedBox(height: 10,),
              Text('TOPIC',style:TextStyle(color: Colors.white),),
              SizedBox(height: 10,),
              Textfield(text: 'write here...',controller: _topicControlller,),
              SizedBox(height: 10,),
              Text('Statement',style: TextStyle(color: Colors.white),),
              SizedBox(height: 10,),
              Statement(statement: _statementControlller, text: 'Write here'),
              SizedBox(height: 10,),
              PollContainer(),
              SizedBox(height: 10,),
              Options(contrller: _option1,),
              SizedBox(height: 10,),
              Options(contrller: _option2,),
              SizedBox(height: 10,),
              Options(contrller: _option3,),
              SizedBox(height: 10,),
              Options(contrller: _option4,),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Container(
                  height: 65,
                  width: 200,
                  decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(1))
                  ),

                  child: ElevatedButton(


                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5))
                      ),

                      onPressed: createNewPoll, child:Text('Submit',style: TextStyle(color: Colors.black,fontSize: 20),)),
                ),
              )






            ],
          ),
        ),
      ),
    );
  }
}
