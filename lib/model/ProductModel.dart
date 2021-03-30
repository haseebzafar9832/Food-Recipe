import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final Color color;
  final String imageUrl;
  Product({this.id, this.title, this.color, this.imageUrl});
  @override
  void notifyListeners() {
    notifyListeners();
  }
}
