import 'package:flutter/material.dart';
import 'package:poll_creation/constants/global_variables.dart';
import 'package:poll_creation/features/display_polls/widgets/rating_bars.dart';
import 'package:poll_creation/features/display_polls/widgets/rating_barwith_no_progress.dart';
import 'package:poll_creation/features/poll_creation/services/Poll_Services.dart';

import '../../../model/data.dart';

class DisplayPoll extends StatefulWidget {
  const DisplayPoll({super.key});

  @override
  State<DisplayPoll> createState() => _DisplayPollState();
}


class _DisplayPollState extends State<DisplayPoll> {
  PollServices services=PollServices();

  List<Data>data=[];
  @override
  void initState()
  {
    super.initState();
    getAllPoles();
  }
  getAllPoles()async
  {
   data=await services.GetAllPoll(context: context);
   print('Hello thiru');
   print(data.length);
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60) ,
        child: AppBar(centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(gradient: GlobalVariables.appBarGradient),
          ),
          title: Text('All Polls',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29,color: Colors.white),),
        ),
      ),

body: Container(
  padding: EdgeInsets.all(5),

  height: double.infinity,
  width: double.infinity,
  child: ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, index) => Padding(
      padding: EdgeInsets.all(10),
      child: Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
          color: Colors.black38,
      border: Border.all(color: Colors.orange)
      ),
        height: 600,
        width: 500,

          child: Column(
            children: [Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Column(
                  children: [
                    Text(

                      textAlign: TextAlign.center,
                      '${data[index].topic}',
                      style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('${data[index].statement}',style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Follow  ',style: TextStyle(color: Colors.orange,fontSize: 15),),
                      Text('@ TOI | Today  ',style: TextStyle(color: Colors.white,fontSize: 15),)],),
                  ],
                ),
              ),

            ),
            SizedBox(height: 10,),
            Column(children: [
              Padding(

                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  children: [
                    RatingBars(text: data[index].text_options[0],),
                    SizedBox(height: 10,),
                    RatingBarWithNoProgress(option:data[index].text_options[1] ,),
                    SizedBox(height: 10,),
                    RatingBarWithNoProgress(option: data[index].text_options[2],),
                    SizedBox(height: 10,),
                    RatingBarWithNoProgress(option: data[index].text_options[3],)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 20,right: 20,),
                child: Row(
                  children: [Icon(Icons.comment,color: Colors.orange,),
                    SizedBox(width: 20,),
                    Text('4.5k comments',style: TextStyle(color: Colors.orange),),
                    SizedBox(width: 40,),
                    Icon(Icons.send,color: Colors.orange,),
                    SizedBox(width: 5,),
                    Text('Share',style: TextStyle(color: Colors.orange),)

                  ],
                ),
              ) ,
            SizedBox(height: 10,),
            Container(width: 350,height: 1,color: Colors.orange.withOpacity(0.25),),
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 50,),
              Icon(Icons.account_circle,color: Colors.white,size: 35,),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('Times of india(TOI)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
           ),
              Text('Us intel... comments...',style: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 11),)
              ,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Icon(Icons.favorite_border,color: Colors.white,size: 20,),
                Text(' 2.1k',style: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 13),)],)
            ],
            ),
            ],
            )],
            ),
            ],
          )),
    ),),
),    );
  }
}
