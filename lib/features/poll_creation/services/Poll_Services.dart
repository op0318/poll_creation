import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:poll_creation/constants/Error_handling.dart';
import 'package:poll_creation/constants/global_variables.dart';
import 'package:poll_creation/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:poll_creation/model/data.dart';
import 'package:poll_creation/model/newpoll_model.dart';

class PollServices
{
 void createNewPoll({
   required BuildContext context,
   required String topic,
 required String statement,
 required String option1,
 required String option2,
 required String option3,
 required String option4}) async{
   
   try
       {
       final newPoll= NewPoll(
           topic: topic,
           statement: statement,
           is_anonymous: true,
           poll_type: 'text',
           text_options: [option1,option2,option3,option4]
       );
       final jsonString=newPoll.tojson();

         http.Response res=await http.post(Uri.parse('$url'),
           headers: {'Content-Type': 'application/json;charset=UTF-8'},
             body: jsonString);

         httErrorHandle(response: res, context: context, onSuccess: (){
print('poll created Successfully');         });
       }
   catch(e)
   {
     ShowSnakbar(context, jsonDecode(e.toString()));
   }
 }

Future<List<Data>> GetAllPoll({required BuildContext context})async
{
 late  List<Data> polls=[];
 try
 {
   http.Response res=await http.get(Uri.parse('$url'));
   httErrorHandle(response: res, context: context, onSuccess: (){
     print('data Fetched success fully');
     final jsonobject=jsonDecode(res.body);
     print(jsonobject['data'].runtimeType);
     for(int i=0;i<jsonobject['data'].length;i++)
       {
         polls.add(
           Data.tojson(
               jsonEncode(
                   jsonobject['data'][i]
               )
           )
         );
       }
     print(polls.length);








   });
 }
 catch(e)
  {
    ShowSnakbar(context,e.toString());
  }
  return polls;
}





}