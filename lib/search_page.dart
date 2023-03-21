import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("Search"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
              );
            },
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 180,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                        child: Image.asset(
                          "assets/images/chair1.jpeg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         "Green Chair",
                         style: TextStyle(
                             fontSize: 18, fontWeight: FontWeight.w400),
                       ),
                       Container(
                         margin: EdgeInsets.only(top: 10),
                         child: Text(
                           "\$ 299",
                           style: TextStyle(
                               fontSize: 20, fontWeight: FontWeight.bold),
                         ),
                       ),
                     ],
                   )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 180,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                        child: Image.asset(
                          "assets/images/chair2.jpg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pillow Chair",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "\$ 259",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 180,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                        child: Image.asset(
                          "assets/images/chair5.jpeg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Crown Chair",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "\$ 399",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 180,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                        child: Image.asset(
                          "assets/images/chair6.jpeg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Black Chair",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "\$ 259",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 180,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                        child: Image.asset(
                          "assets/images/chair9.jpg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Couch Chair",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "\$ 499",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 180,
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 10, right: 10,bottom: 10),
                        child: Image.asset(
                          "assets/images/chair10.jpg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Lounge Chair",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "\$ 799",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms = [
    'Chairs',
    'Lamps',
    'Clocks',
    'Candles',
    'Tables',
    'Desks',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: (){
            if(query.isEmpty){
              close(context, null);
            }
            else{
              query = '';
            }
      },
          icon: Icon(Icons.clear)
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: Icon(Icons.arrow_back_ios_new)
    );
  }

  @override
  Widget buildResults(BuildContext context) => Center(
    child: Text(
      query,
      style: TextStyle(fontSize: 64,fontWeight: FontWeight.bold),
    ),
  );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for(var furniture in searchTerms){
      if(furniture.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(furniture);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: (){
            query = result;
          },
        );
      },
    );
  }
}