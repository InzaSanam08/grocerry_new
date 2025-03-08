import 'package:flutter/material.dart';

class Custum_Listview extends StatefulWidget {
  const Custum_Listview({super.key});

  @override
  State<Custum_Listview> createState() => _Custum_ListviewState();
}

class _Custum_ListviewState extends State<Custum_Listview> {

var mqHeight ;
var mqwidth;

  @override
  Widget build(BuildContext context) {
   double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
screenWidth = 263;
screenHeight = 219;

    return Scaffold(
           body:Column(
            children: [
              const SizedBox(height: 100,),
              SizedBox(height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context,index){
                
                   return Padding(
                     padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                     child: SizedBox (
                      height:screenHeight ,
                      width:screenWidth,
                         

                          ),
                   );
                
                  }),
              )
            ],
           ),
    );
  }
}