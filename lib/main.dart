import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Gallery%20Items.dart';
import 'package:flutter_application_1/Screens/Productdetail.dart';
import 'package:flutter_application_1/provider/productprovider.dart';
import 'package:provider/provider.dart';

import 'Screens/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Gallery',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(),
        routes: {ProductDetail.routeName: (_) => ProductDetail()},
      ),
    );
  }
}
