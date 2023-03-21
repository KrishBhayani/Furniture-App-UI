
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
              child: Text("Furniture \nin your style",
                  style: TextStyle(fontSize: 30)),
            ),
            flex: 4,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 10),
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
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "Elegent\nwhite chair",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "\$ 200",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/chair1.jpeg",fit: BoxFit.fitHeight,),
                    )
                  ],
                ),
              ),
            ),
            flex: 6,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, bottom: 18, top: 10),
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'All',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'Chairs',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'Lamps',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'Clocks',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'Tables',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'curtains',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            flex: 2,
          ),
          Expanded(
            flex: 8,
            child: Container(
              margin: EdgeInsets.only(left: 20, bottom: 30),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    child: Card(
                      color: Colors.white,
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
                              "Blue Chair",
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
                    child: Card(
                      color: Colors.white,
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
                              "Blue Chair",
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
                    child: Card(
                      color: Colors.white,
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
                    child: Card(
                      color: Colors.white,
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
                              "Blue Chair",
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
                    child: Card(
                      color: Colors.white,
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
                              "Blue Chair",
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
                    child: Card(
                      color: Colors.white,
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
                                "assets/images/chair7.jpg",
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
                              "\$ 299",
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
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
              color: Colors.black,
              size: 30,
            ),
            label: 'MENU',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.black,
              size: 30,
            ),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'ACCOUNT',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'CART',
          ),
        ],
      ),
    );
  }
}
