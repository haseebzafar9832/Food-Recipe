import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/moredetailpro.dart';
import 'package:provider/provider.dart';

class MoreDetail extends StatelessWidget {
  static const RouteName = '/mealdetail';
  int i = 1;

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productDetail =
        Provider.of<MealProvider2>(context).findViewById(productId);
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
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Color(0xfff54d27),
                              ),
                              SizedBox(width: 20),
                              Title(
                                child: Text('${productDetail.duration} min',
                                    style: TextStyle(color: Colors.black54)),
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.no_meals,
                                color: Color(0xfff54d27),
                              ),
                              SizedBox(width: 20),
                              Title(
                                child: Text("Spicy",
                                    style: TextStyle(color: Colors.black54)),
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.tapas,
                                color: Color(0xfff54d27),
                              ),
                              SizedBox(width: 20),
                              Title(
                                child: Text("Simple",
                                    style: TextStyle(color: Colors.black54)),
                                color: Colors.red,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned.fill(
                    right: -80,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 85),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(productDetail.imageUrl),
                          radius: 90,
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
      body: Container(
        ///padding: EdgeInsets.only(left: 5),
        child: Column(
          children: [
            Title(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "INGREDIANTS",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )),
            Wrap(
              spacing: 4.0,
              runSpacing: 0.0,
              children: List<Widget>.generate(
                  productDetail
                      .ingredients.length, // place the length of the array here
                  (int index) {
                return Chip(label: Text(productDetail.ingredients[index]));
              }).toList(),
            ),
            Title(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Steps",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                )),
            Expanded(
              child: ListView.builder(
                itemCount: productDetail.steps.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(
                      productDetail.steps[index],
                      textAlign: TextAlign.justify,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Row buildContainer(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 18, left: 20),
            child: Text(
              title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

// class Detailof extends StatefulWidget {
//   final String chipname;
//   Detailof({Key key, this.chipname}) : super(key: key);
//   @override
//   _DetailofState createState() => _DetailofState();
// }

// class _DetailofState extends State<Detailof> {
//   var _isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return FilterChip(
//       label: Text(widget.chipname),
//       labelStyle: TextStyle(
//         color: Colors.red,
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//       ),
//       selected: _isSelected,
//       backgroundColor: Colors.black,
//       onSelected: (_isSelected) {setState(() {
//         _isSelected
//       });},
//     );
//   }
// }
