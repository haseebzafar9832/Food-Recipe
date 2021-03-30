import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/mealmodel.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatefulWidget {
  static const routeName = '/categorydetail';

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final borderOnForeground = true;
  // get productId => null;
  var isSearching = false;
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productDetail =
        Provider.of<MealProvider>(context).findViewById(productId);

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
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            // Text(productDetail.),
            Expanded(
              child: ListView.builder(
                itemCount: productDetail.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Text(productDetail[index].title),
                  );
                },
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 15,
            //   ),
            //   child: Card(
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Container(
            //             decoration: BoxDecoration(
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Colors.grey.withOpacity(0.3),
            //                   spreadRadius: 1,
            //                   blurRadius: 9,
            //                   offset:
            //                       Offset(0, 3), // changes position of shadow
            //                 ),
            //               ],
            //             ),
            //             child: ClipRRect(
            //               borderRadius: BorderRadius.circular(20),
            //               child: Image.network(
            //                 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
            //                 height: 110,
            //                 width: 110,
            //                 fit: BoxFit.fill,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: <Widget>[
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 25,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "productDetail.id",
            //                   style: TextStyle(
            //                       fontSize: 17,
            //                       fontWeight: FontWeight.bold,
            //                       color: Colors.black54),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 5,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "By Molly Familano",
            //                   style: TextStyle(color: Colors.black45),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 25,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "87 Recipe",
            //                   style: TextStyle(color: Colors.blue),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            // // Second card
            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 10,
            //   ),
            //   child: Card(
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Container(
            //             decoration: BoxDecoration(
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Colors.grey.withOpacity(0.3),
            //                   spreadRadius: 1,
            //                   blurRadius: 9,
            //                   offset:
            //                       Offset(0, 3), // changes position of shadow
            //                 ),
            //               ],
            //             ),
            //             child: ClipRRect(
            //               borderRadius: BorderRadius.circular(20),
            //               child: Image.network(
            //                 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
            //                 height: 110,
            //                 width: 110,
            //                 fit: BoxFit.fill,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: <Widget>[
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 25,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "CockBook: Instant Pot",
            //                   style: TextStyle(
            //                       fontSize: 17,
            //                       fontWeight: FontWeight.bold,
            //                       color: Colors.black54),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 5,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "By Molly Familano",
            //                   style: TextStyle(color: Colors.black45),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 25,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "87 Recipe",
            //                   style: TextStyle(color: Colors.blue),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            // // Third card
            // Padding(
            //   padding: const EdgeInsets.only(
            //     top: 10,
            //   ),
            //   child: Card(
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Container(
            //             decoration: BoxDecoration(
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Colors.grey.withOpacity(0.3),
            //                   spreadRadius: 1,
            //                   blurRadius: 9,
            //                   offset:
            //                       Offset(0, 3), // changes position of shadow
            //                 ),
            //               ],
            //             ),
            //             child: ClipRRect(
            //               borderRadius: BorderRadius.circular(20),
            //               child: Image.network(
            //                 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
            //                 height: 110,
            //                 width: 110,
            //                 fit: BoxFit.fill,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: <Widget>[
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 25,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "CockBook: Instant Pot",
            //                   style: TextStyle(
            //                       fontSize: 17,
            //                       fontWeight: FontWeight.bold,
            //                       color: Colors.black54),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 5,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "By Molly Familano",
            //                   style: TextStyle(color: Colors.black45),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   top: 25,
            //                   bottom: 0,
            //                   left: 10,
            //                 ),
            //                 child: Text(
            //                   "87 Recipe",
            //                   style: TextStyle(color: Colors.blue),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
