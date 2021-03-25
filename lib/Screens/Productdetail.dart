import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  static const routeName = '/categorydetail';

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  var isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: !isSearching
            ? Text(
                "Show Case",
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              )
            : TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search), hintText: "You can search here"),
              ),
        backgroundColor: Colors.white,
        actions: [
          isSearching
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      this.isSearching = false;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      this.isSearching = true;
                    });
                  },
                )
        ],
      ),
      body: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black), boxShadow: [
          // BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 2,
          //     blurRadius: 9,
          //     offset: Offset(0, 2))
        ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
                    height: 110,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title: Text("Pakistani Food"),
                    subtitle: Text("data"),
                  ),
                  ListTile(
                    title: Text("By Haseeb"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
