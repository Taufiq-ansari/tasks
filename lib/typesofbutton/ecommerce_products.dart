import 'package:api/typesofbutton/products_model.dart';
import 'package:flutter/material.dart';

class DisplayEcommerceProducts extends StatefulWidget {
  DisplayEcommerceProducts({super.key});

  @override
  State<DisplayEcommerceProducts> createState() =>
      _DisplayEcommerceProductsState();
}

class _DisplayEcommerceProductsState extends State<DisplayEcommerceProducts> {
  // int currentqsuntity = 5;

// list of product display
  List<ProductsModel> allProducts = [
    ProductsModel(
      imageUrl:
          "https://images-cdn.ubuy.co.in/6701d3c803d7f318d659fafc-mini-phone-4g-unlocked-small-smartphone.jpg",
      productName: "smartphone",
      price: 69000,
      quantity: 2,
    ),
    ProductsModel(
      imageUrl:
          "https://images.pexels.com/photos/40185/mac-freelancer-macintosh-macbook-40185.jpeg?cs=srgb&dl=pexels-pixabay-40185.jpg&fm=jpg",
      productName: "laptop",
      price: 120000,
      quantity: 1,
    ),
    ProductsModel(
      imageUrl:
          "https://rukminim2.flixcart.com/image/480/640/xif0q/smart-band-tag/q/s/2/amoled-no-regular-14-0-yes-yes-xmsh15hm-android-ios-mi-yes-original-imahdq5gx7kxjz4b.jpeg?q=90",
      productName: "smart-band",
      price: 14000,
      quantity: 5,
    ),
  ];

//  late   List<ProductsModel> filterlist = allProducts.where((item) => item.quantity > 1).toList();

  List<ProductsModel> filterProducts = [];
  bool isProducts = false;

  double isQuality = 0.0;

  @override
  void initState() {
    super.initState();
    print(" initstate called");
  }

  filterquantity() {
    if (isProducts) {
      return allProducts.where((item) => item.quantity > 0).toList();
    } else {
      filterProducts = List.from(allProducts);
    }
    setState(() {});
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Column(
        children: [
          // slider
          Slider(
            label: allProducts[2].quantity.toString(),
            value: isQuality,
            min: 0.0,
            max: 1.0,
            onChanged: (double selected) {
              isQuality = selected;
              setState(() {});
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: allProducts.length,
              itemBuilder: (context, index) {
                final product = allProducts[index];
                return ProductsListTile(products: product);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("alertbox"),
                    title: Text(
                      "are you sure you want to exit ",
                      style: TextStyle(fontFamily: "MyFonts", fontSize: 14),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Yes"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("No"),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text("content"),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ProductsListTile extends StatefulWidget {
  ProductsListTile({
    super.key,
    required this.products,
  });

  final ProductsModel products;

  @override
  State<ProductsListTile> createState() => _ProductsListTileState();
}

class _ProductsListTileState extends State<ProductsListTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          //image

          Image.network(
            widget.products.imageUrl,
            height: 120,
            fit: BoxFit.cover,
          ),

          // name
          Text("${widget.products.productName}"),

          // price
          Text("${widget.products.price}"),
        ],
      ),
    );
  }
}
