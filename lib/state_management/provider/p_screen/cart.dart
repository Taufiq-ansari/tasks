import 'package:api/state_management/provider/p_model/cart_model.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("==> cart build function called");
    return Scaffold(
      body: Consumer<ItemsProvider>(
        builder: (ctx, value, child) {
          print("==> cart consumer called");
          return value.getItems().isNotEmpty
              ? ListView.builder(
                  itemCount: value.getItems().length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 8),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text("${value.getItems()[index]["item"]}"),
                        subtitle: Text(
                          value.getItems()[index]["qauntity"].toString(),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            Provider.of<ItemsProvider>(
                              context,
                              listen: false,
                            ).removeToItems(index);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("remove from cart"),
                              ),
                            );
                          },
                          icon: Icon(
                            CupertinoIcons.add_circled,
                          ),
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: Text(
                    "Not Item Added",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                );
        },
      ),
    );
  }
}
