import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:furniture_app/details/detail_page.dart';

class PracticePage extends StatefulWidget{

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
bool isvisiblechair = false;
bool isvisibleclock = false;
bool isvisibledesk = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CarouselSlider(
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
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.amber
                        ),
                        child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
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
                        onPressed: () => setState(() {
                        }),
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
                           isvisibleclock = false;
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
                            isvisibleclock = true;
                            isvisiblechair = false;
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
                        },
                        child: Text("Tables")
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
                        },
                        child: Text("Desks")
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              child: Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20, bottom: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
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
                                        "assets/images/chair2.jpg",
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 30, top: 10),
                                    child: Text(
                                      "Pillow Chair",
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 30, top: 10),
                                    child: Text(
                                      "\$ 259",
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
                                      "\$ 399",
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
                                         "assets/images/chair6.jpeg",
                                         fit: BoxFit.fitHeight,
                                       ),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "Black Chair",
                                       style: TextStyle(
                                           fontSize: 18, fontWeight: FontWeight.w400),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 30, top: 10),
                                     child: Text(
                                       "\$ 259",
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
                                         "assets/images/chair9.jpg",
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
                                       "\$ 499",
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
                                       "Lounge Chair",
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
                       )
                    ],
                  ),
                ),
                flex: 3,
              ),
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