import 'package:flutter/material.dart';

import 'package:flutter_application_1/provider/mealmodel.dart';
import 'package:provider/provider.dart';

import 'Moredetail.dart';

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
    // final products = Provider.of<MealProvider>(context);
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 640,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: productDetail.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          print(productId);
                          Navigator.of(context).pushNamed(
                            MoreDetail.RouteName,
                            arguments: productDetail[index].id,
                          );
                        },
                        child: Card(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 9,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      productDetail[index].imageUrl,
                                      height: 110,
                                      width: 110,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 0,
                                        left: 10,
                                      ),
                                      child: Wrap(
                                        alignment: WrapAlignment.start,
                                        children: [
                                          Text(
                                            productDetail[index].title,
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        bottom: 0,
                                        left: 10,
                                      ),
                                      child: Text(
                                        "By Molly Familano",
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 25,
                                        bottom: 0,
                                        left: 10,
                                      ),
                                      child: Text(
                                        "More Detail",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
