import 'package:flutter/material.dart';

void main() {
  runApp( BasketballPointCounter());
}

class BasketballPointCounter extends StatefulWidget {
  BasketballPointCounter({super.key});

  @override
  State<BasketballPointCounter> createState() => _BasketballPointCounterState();
}

class _BasketballPointCounterState extends State<BasketballPointCounter> {
  int teamApoint =0 ;

  int teamBpoint =0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home : Scaffold(
         appBar: AppBar(
           backgroundColor: Color(0xff392467),
           title: Text("Basketball_Point_Counter",
           style: TextStyle(
             fontWeight: FontWeight.bold,
             color: Colors.white,
           ),),
         ),
         body : Column(
           children: [
             SizedBox(
               height: 75,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Column(
                   children: [
                     Text("Team A",
                     style: TextStyle(
                       fontSize: 32,
                       fontWeight: FontWeight.bold,
                     ),
                     ),
                     Text("$teamApoint",
                       style: TextStyle(
                         fontSize: 110,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: Color(0xff392467),
                         minimumSize: Size(150, 60),
                       ),
                         onPressed: (){
                         setState(() {
                           teamApoint ++;
                         });
                         },
                         child: Text("Add 1 Point",
                           style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                           ),
                         ),
                     ),
                     SizedBox(
                       height: 13,
                     ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: Color(0xff392467),
                         minimumSize: Size(150, 60),
                       ),
                       onPressed: (){
                         setState(() {
                           teamApoint +=2;
                         });
                       },
                       child: Text("Add 2 Point",
                         style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 13,
                     ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: Color(0xff392467),
                         minimumSize: Size(150, 60),
                       ),
                       onPressed: (){
                         setState(() {
                           teamApoint +=3;
                         });
                       },
                       child: Text("Add 3 Point",
                         style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                   ],
                 ),
                SizedBox(
                  height: 400,
                  child:  VerticalDivider(
                    color: Colors.grey,
                    thickness: 3,
                  ),
                ),
                 Column(
                   children: [
                     Text("Team B",
                       style: TextStyle(
                         fontSize: 32,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     Text("$teamBpoint",
                       style: TextStyle(
                         fontSize: 110,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: Color(0xff392467),
                         minimumSize: Size(150, 60),
                       ),
                       onPressed: (){
                         setState(() {
                           teamBpoint ++;
                         });
                       },
                       child: Text("Add 1 Point",
                         style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 13,
                     ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: Color(0xff392467),
                         minimumSize: Size(150, 60),
                       ),
                       onPressed: (){
                         setState(() {
                           teamBpoint +=2;
                         });
                       },
                       child: Text("Add 2 Point",
                         style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 13,
                     ),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: Color(0xff392467),
                         minimumSize: Size(150, 60),
                       ),
                       onPressed: (){
                         setState(() {
                           teamBpoint +=3;
                         });
                       },
                       child: Text("Add 3 Point",
                         style: TextStyle(
                             fontSize: 25,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                         ),
                       ),
                     ),
                   ],
                 ),
               ],
             ),
             SizedBox(
               height: 70,
             ),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                 primary: Color(0xff392467),
                 minimumSize: Size(150, 60),
               ),
               onPressed: (){
                 setState(() {
                   teamApoint = 0 ;
                   teamBpoint = 0 ;
                 });
               },
               child: Text("Reset",
                 style: TextStyle(
                     fontSize: 25,
                     color: Colors.white,
                     fontWeight: FontWeight.bold
                 ),
               ),
             ),
           ],
         ),
       ),
    );
  }
}

