import 'package:flutter/material.dart';
import 'package:furniture_app/home_page.dart';

class DetailPage3 extends StatefulWidget{
  @override
  State<DetailPage3> createState() => _DetailPage3State();
}

class _DetailPage3State extends State<DetailPage3> {
  int count = 1;
  int total = 99;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/lamp6.jpg",
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 15, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomePage();
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
                              color: Colors.white54,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.shopping_cart_outlined),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10,left: 170),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 10,
                                color: Colors.blueGrey,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.white38,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25,left: 20),
                      child: Text("Elegant White Lamp",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15,left: 20),
                      child: Text("This single light pendant light brings\nmid-centurymordern style to your home.",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25,left: 20),
                      child: Text("Color",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15,left: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              //Navigator.of(context).pop();
                            },
                            child: new Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(width: 2, color: Colors.white)),
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.circle,
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.circle,
                              size: 30,
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.circle,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.circle,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 20),
                      child: Text("Quantity",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              FloatingActionButton.small(
                                onPressed: (){
                                  setState((){
                                    if(count==1){
                                      return null;
                                    }
                                    else{
                                      count -= 1;
                                      total = count*99;
                                    }
                                  });
                                },
                                child: Icon(Icons.remove,size: 30,color: Colors.white,),
                                backgroundColor: Colors.white54,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text("$count",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: FloatingActionButton.small(
                                  onPressed: (){
                                    setState((){
                                      count += 1;
                                      total = 99*count;
                                    });
                                  },
                                  child: Icon(Icons.add,size: 30,color: Colors.white,),
                                  backgroundColor: Colors.white54,
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: Text("\$ $total",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25,left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            color: Colors.white10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                              child: Text(
                                "VR View",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),
                              ),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}