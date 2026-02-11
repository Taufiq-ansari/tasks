import 'package:api/state_management/provider/p_model/list_of_data.dart';
import 'package:api/state_management/provider/p_screen/cart.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListOfData extends StatelessWidget {
  const ListOfData({super.key});

  @override
  Widget build(BuildContext context) {
    print("build function called");
    return Scaffold(
      appBar: AppBar(
        // actionsPadding: EdgeInsets.only(right: 10),
        title: Text('provider'),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ListOfMapProvider>(context, listen: false).addData({
                "item": "Samsung Galaxy S25 ultra",
                "price": 130000,
                "qauntity": 1,
              });
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("item added")));
            },
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: Container(
        child: Consumer<ListOfMapProvider>(
          builder: (ctx, provider, __) {
            print("consumer called");
            return provider.getmData().isNotEmpty
                ? ListView.builder(
                    itemCount: provider.getmData().length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(9.0),
                        child: ListTile(
                          title: Text(
                            "Name: ${provider.getmData()[index]["item"]}",
                            style: TextStyle(fontSize: 12),
                          ),
                          subtitle: Text(
                            "costs: ${provider.getmData()[index]["price"]}",
                          ),
                          trailing: IconButton(
                            // focusColor: Colors.green,
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusGeometry.circular(12),
                                ),
                              ),
                            ),
                            onPressed: () {
                              provider.addToCart(provider.getmData()[index]);
                            },
                            icon: Text("add"),
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Text(
                      "Not Found",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        mini: true,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(),
            ),
          );
        },
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}
