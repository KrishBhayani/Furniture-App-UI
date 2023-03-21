import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:furniture_app/details/detail_page.dart';


class ViewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child: Scaffold(
         body: Stack(
           fit: StackFit.expand,
           children: [
             Image.asset("assets/images/room3.jpg",fit: BoxFit.fitHeight,),
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 20,left: 20,right: 65),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(
                         onTap: () {
                           Navigator.of(context).push(
                             MaterialPageRoute(
                               builder: (context) {
                                 return DetailPage();
                               },
                             ),
                           );
                         },
                         child: Card(
                           color: Colors.white54,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10)),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Icon(Icons.arrow_back_ios_new),
                           ),
                         ),
                       ),
                       Card(
                         color: Colors.white,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)),
                         child: Padding(
                           padding: const EdgeInsets.all(2),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.circle,color: Colors.greenAccent,size: 20,),
                                   Icon(Icons.circle,color: Colors.yellowAccent,size: 20,),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.circle,color: Colors.lightBlue,size: 20,),
                                   Icon(Icons.circle,color: Colors.blueGrey,size: 20,),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
                 Image.asset("assets/images/chair7.jpg",fit: BoxFit.fitWidth,),
                 Container(
                   margin: EdgeInsets.only(left: 20,right: 30,bottom: 20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Card(
                         color: Colors.white,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
                         ),
                       ),
                       Card(
                         color: Colors.white,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10)),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                           child: Text(
                             "Add to card",
                             style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.blueGrey
                             ),
                           ),
                         ),
                       )
                     ],
                   ),
                 )
               ],
             )
           ],
         ),
       ),
   );
  }
}