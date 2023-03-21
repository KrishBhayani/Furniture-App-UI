import 'package:flutter/material.dart';
import 'package:furniture_app/details/detail2_page.dart';
import 'package:furniture_app/details/detail3_page.dart';
import 'package:furniture_app/details/detail4_page.dart';
import 'package:furniture_app/details/detail5_page.dart';
import 'package:furniture_app/details/detail_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:furniture_app/login_page.dart';
import 'package:furniture_app/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  bool isvisibleall = true;
  bool isvisiblechair = false;
  bool isvisiblelamp = false;
  bool isvisibleclock = false;
  bool isvisiblecandle = false;
  bool isvisibletable = false;
  @override
  Widget build(BuildContext context) {
    List imglist = [
      'assets/images/chair7.jpg',
      'assets/images/clock3.jpg',
      'assets/images/lamp6.jpg',
      'assets/images/candle7.png',
      'assets/images/chair2.jpg',
    ];
    List imgName = [
      "Elegent\nwhite chair",
      "Elegent\nwhite clock",
      "Elegent\nwhite lamp",
      "Elegent\nbrown candle",
      "Elegent\npillow Chair",
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white54,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 25),
                child: Text(
                  "Furniture\nin your style",
                  style: TextStyle(fontSize: 34, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 15),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index,reason){
                      currentIndex = index;
                      setState(() {});
                    }
                  ),
                  items: [299,149,99,199,259].map((i){
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: InkWell(
                              onTap: () {
                                if(currentIndex==0){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return DetailPage();
                                  },));
                                }
                                else if(currentIndex==1){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return DetailPage2();
                                  },));
                                }
                                else if(currentIndex==2) {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return DetailPage3();
                                      },));
                                }
                                else if(currentIndex==3) {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return DetailPage4();
                                      },));
                                }
                                else if(currentIndex==4) {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return DetailPage5();
                                      },));
                                }
                              },
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 50, left: 20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${imgName[currentIndex]}",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "\$ $i",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                                      child: Image.asset('${imglist[currentIndex]}',fit: BoxFit.cover,),
                                    )
                                  ],
                                ),
                              ),
                            ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 85,
                    margin: EdgeInsets.only(left: 30,right: 20,top: 30,bottom: 30),
                    child: ElevatedButton(
                        style:  ButtonStyle(
                          foregroundColor: getColor(Colors.white, Colors.black54),
                          backgroundColor: getColor(Colors.transparent, Colors.white),
                        ),
                        onPressed: (){
                          setState(() {
                            isvisiblechair = false;
                            isvisibleall = true;
                            isvisibleclock = false;
                            isvisiblecandle = false;
                            isvisibletable = false;
                            isvisiblelamp = false;
                          });
                        },
                        child: Text("All")
                    ),
                  ),
                  Container(
                    width: 85,
                    margin: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 30),
                    child: ElevatedButton(
                      style:  ButtonStyle(
                        foregroundColor: getColor(Colors.white, Colors.black54),
                        backgroundColor: getColor(Colors.transparent, Colors.white),
                      ),
                        onPressed: (){
                        setState(() {
                          isvisiblechair = true;
                          isvisibleall = false;
                          isvisibleclock = false;
                          isvisiblecandle = false;
                          isvisibletable = false;
                          isvisiblelamp = false;
                        });
                        },
                        child: Text("Chairs")
                    ),
                  ),
                  Container(
                    width: 85,
                    margin: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 30),
                    child: ElevatedButton(
                        style:  ButtonStyle(
                          foregroundColor: getColor(Colors.white, Colors.black54),
                          backgroundColor: getColor(Colors.transparent, Colors.white),
                        ),
                        onPressed: (){
                          setState(() {
                            isvisiblechair = false;
                            isvisibleall = false;
                            isvisibleclock = false;
                            isvisiblecandle = false;
                            isvisibletable = false;
                            isvisiblelamp = true;
                          });
                        },
                        child: Text("Lamps")
                    ),
                  ),
                  Container(
                    width: 85,
                    margin: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 30),
                    child: ElevatedButton(
                        style:  ButtonStyle(
                          foregroundColor: getColor(Colors.white, Colors.black54),
                          backgroundColor: getColor(Colors.transparent, Colors.white),
                        ),
                        onPressed: (){
                          setState(() {
                            isvisiblechair = false;
                            isvisibleall = false;
                            isvisibleclock = true;
                            isvisiblecandle = false;
                            isvisibletable = false;
                            isvisiblelamp = false;
                          });
                        },
                        child: Text("Clocks")
                    ),
                  ),
                  Container(
                    width: 87,
                    margin: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 30),
                    child: ElevatedButton(
                        style:  ButtonStyle(
                          foregroundColor: getColor(Colors.white, Colors.black54),
                          backgroundColor: getColor(Colors.transparent, Colors.white),
                        ),
                        onPressed: (){
                          setState(() {
                            isvisiblechair = false;
                            isvisibleall = false;
                            isvisibleclock = false;
                            isvisiblecandle = true;
                            isvisibletable = false;
                            isvisiblelamp = false;
                          });
                        },
                        child: Text("Candles")
                    ),
                  ),
                  Container(
                    width: 85,
                    margin: EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 30),
                    child: ElevatedButton(
                        style:  ButtonStyle(
                          foregroundColor: getColor(Colors.white, Colors.black54),
                          backgroundColor: getColor(Colors.transparent, Colors.white),
                        ),
                        onPressed: (){
                          setState(() {
                            isvisiblechair = false;
                            isvisibleall = false;
                            isvisibleclock = false;
                            isvisiblecandle = false;
                            isvisibletable = true;
                            isvisiblelamp = false;
                          });
                        },
                        child: Text("Tables")
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: true,
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, bottom: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                     if(isvisibleall)
                       Row(
                         children: [
                           Container(
                             width: 200,
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/chair1.jpeg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Green Chair",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 299",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/chair10.jpg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Couch Chair",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 799",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/lamp1.jpeg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Black Lamp",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 129",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/lamp4.jpeg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Hang Lamp",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 99",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(30)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/clock2.jpg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Wall Clock",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 249",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/clock5.jpeg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Desk Clock",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 99",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(30)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/candle2.jpg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Pink Candle",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 129",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/candle1.jpg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Set of Candles",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 199",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(30)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/table1.jpg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Black Table",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 999",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Container(
                             width: 200,
                             margin: EdgeInsets.only(left: 10),
                             child: Card(
                               color: Colors.white,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20)),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(top: 20),
                                     height: 180,
                                     child: Padding(
                                       padding:
                                       const EdgeInsets.only(left: 10, right: 10),
                                       child: Image.asset(
                                         "assets/images/table2.png",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Round Table",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 799",
                                       style: TextStyle(
                                           fontSize: 20, fontWeight: FontWeight.bold),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                      if(isvisiblechair)
                        Row(
                          children: [
                            Container(
                              width: 200,
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/chair5.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Crown Chair",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 599",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/chair9.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Lounge Chair",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 599",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/chair3.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Sitting Chair",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 99",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/chair4.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Blue Chair",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 229",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/chair1.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Green Chair",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 299",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/chair10.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Couch Chair",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 799",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      if(isvisiblelamp)
                        Row(
                          children: [
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/lamp2.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Rect-Round Lamp",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 149",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/lamp4.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Hang Lamp",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 99",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/lamp3.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Stand Lamp",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 179",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/lamp1.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Black Lamp",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 129",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/lamp4.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Hang Lamp",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 99",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/lamp5.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Single Lamp",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 199",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      if(isvisibleclock)
                        Row(
                          children: [
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/clock1.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Toy Clock",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 149",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/clock3.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Circle Clock",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 249",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/clock4.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Quote Clock",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 289",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/clock2.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Wall Clock",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 249",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/clock5.jpeg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Desk Clock",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 99",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      if(isvisiblecandle)
                        Row(
                          children: [
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/candle3.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Golden Candle",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 219",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/candle4.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Glass Candle",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 199",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/candle6.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Name Candle",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 129",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/candle1.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Set of Candles",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 199",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/candle2.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Pink Candle",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 129",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/candle5.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "White Candle",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 49",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      if(isvisibletable)
                        Row(
                          children: [
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/table3.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "SIngle Table",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 849",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/table2.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Round Table",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 799",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/table1.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Black Table",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 899",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/table4.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "Set of Table",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 1299",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      height: 180,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 10, right: 10),
                                        child: Image.asset(
                                          "assets/images/table5.jpg",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "White Table",
                                        style: TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30, top: 10),
                                      child: Text(
                                        "\$ 699",
                                        style: TextStyle(
                                            fontSize: 20, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                    ],
                  ),
                ),
                flex: 3,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueGrey,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.blueGrey,
                size: 35,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
                color: Colors.black,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return SearchPage();
                  },));
                },
                child: Card(
                  color: Colors.white38,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return LoginPage();
                  },));
                },
                child: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

 MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states){
      if(states.contains(MaterialState.pressed)){
        return colorPressed;
      }
      else{
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
 }
}
