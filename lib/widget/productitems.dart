import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Productdetail.dart';
import 'package:flutter_application_1/model/ProductModel.dart';
import 'package:provider/provider.dart';

class ProductGalleryitems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Product>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: products.color,
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 0, //extend the shadow
                  )
                ],
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      products.color.withOpacity(0.9),
                      products.color,
                    ]),
                borderRadius: BorderRadius.circular(15),
              ),
              // color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Expanded(
                        child: InkWell(
                          onTap: () {
                            print(products.id);
                            Navigator.of(context).pushNamed(
                                ProductDetail.routeName,
                                arguments: products.id);
                          },
                          child: Image.network(
                            products.imageUrl,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Container(
                        child: Text(
                          products.title,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
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
