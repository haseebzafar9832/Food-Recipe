import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/productprovider.dart';
import 'package:flutter_application_1/widget/productitems.dart';
import 'package:provider/provider.dart';

class GalleryItems extends StatefulWidget {
  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<GalleryItems> {
  final products = 3;

  final List a = ["ali", "sf"];
  var isSearching = false;
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context).item;
    return Card(
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 18, top: 18),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //  color: Colors.black87,
                ),
                alignment: Alignment.topRight,
              ),
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2 / 2,
                      crossAxisCount: 2,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1),
                  itemBuilder: (BuildContext context, index) {
                    return ChangeNotifierProvider.value(
                        value: products[index], child: ProductGalleryitems());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
