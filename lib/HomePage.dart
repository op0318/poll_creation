import 'package:flutter/material.dart';
import 'package:poll_creation/constants/global_variables.dart';
import 'package:poll_creation/features/display_polls/screens/display_poll_details.dart';
import 'package:poll_creation/features/poll_creation/screens/new_poll_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
int _page=0;

List<Widget> pages=[
  CreateNewPoll(),
  DisplayPoll()
];


void updatePage(int page)
{
setState(() {
  _page=page;
});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        onTap: updatePage,

        elevation: 5.0,
        backgroundColor: Colors.black,

        items: [
          BottomNavigationBarItem(

              icon: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  gradient: LinearGradient(

                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.white.withOpacity(0.4)],
                    stops: [0.7,1],    ),
                    border: Border(
                        bottom: BorderSide(
                        width: 3,
                    color: Colors.white.withOpacity(1)
                  ))
                ),
                child: Icon(
                  Icons.add,color: Colors.white,),
              ),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit,color:Colors.white,),label: 'start')
        ],
      ),

   );
  }
}
