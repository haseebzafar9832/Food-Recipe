import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/moredetailpro.dart';
import 'package:provider/provider.dart';

class MoreDetail extends StatelessWidget {
  static const RouteName = '/mealdetail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productDetail =
        Provider.of<MealdetailProvider>(context).findViewById(productId);
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, index) {
            return <Widget>[
              SliverAppBar(
                floating: false,
                pinned: true,
                title: Text(
                  productDetail.title,
                  style: TextStyle(color: Colors.black54),
                ),
                backgroundColor: Colors.blue[100],
                expandedHeight: 350,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 150,
                          left: 30,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.timer), onPressed: null),
                                Title(
                                  child: Text(productDetail.duration.toString(),
                                      style: TextStyle(color: Colors.black54)),
                                  color: Colors.red,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.category),
                                    onPressed: null),
                                Title(
                                  child: Text("Spicy",
                                      style: TextStyle(color: Colors.black54)),
                                  color: Colors.red,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.no_meals),
                                    onPressed: null),
                                Title(
                                  child: Text("Simple",
                                      style: TextStyle(color: Colors.black54)),
                                  color: Colors.red,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned.fill(
                        right: -70,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 85),
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(productDetail.imageUrl),
                              radius: 80,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                buildContainer("INGREDIANTS"),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: productDetail.ingredients.length,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                          child: Text(
                              productDetail.ingredients[index].toString()));
                    },
                  ),
                ),
                buildContainer("Steps"),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: productDetail.steps.length,
                    itemBuilder: (BuildContext context, index) {
                      return Card(
                          child: Text(productDetail.steps[index].toString()));
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Container buildContainer(String title) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
