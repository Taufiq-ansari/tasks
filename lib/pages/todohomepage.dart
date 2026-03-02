import 'package:api/model/todomodel.dart';
import 'package:api/pages/todoaddpage.dart';
import 'package:api/sqlite/dbhelper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ToDoHomepage extends StatefulWidget {
  const ToDoHomepage({super.key});

  @override
  State<ToDoHomepage> createState() => _ToDoHomepageState();
}

class _ToDoHomepageState extends State<ToDoHomepage> {
  List<TodoModel> todoList = [];
  late DBHelper helper;

  //  Color colorChoice(int? priorityColor){
  //
  //    // print(" ==> color $priorityColor");
  //   switch(priorityColor){
  //     case 1:
  //       return Colors.grey.shade300;  // low prio
  //
  //   case 2:
  //     return Colors.redAccent;       // high prio
  //
  //     case 3:
  //       return Colors.green;         // medium prio
  //
  //       default:
  //         return Colors.amber;
  //   }
  // }
  // color change by index
  // void updatePriority(int index){
  //    print("===> color change $index");
  //     // todoList[index].colorValue =todoList[index].colorValue==4?1:todoList[index].colorValue!+1;
  //    setState(() {
  //
  //    });
  // }

// getData from firebase
  Future<void> getData(TodoModel todo) async {
    await FirebaseFirestore.instance.collection("Users").get();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   print("initstate called..");
  // helper = DBHelper.getInstance;
  // FireBaseService.initialize();
  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   FireBaseService.showNotification();
  // });
  // getData();
  // fetchTodo();
  // }

  // Future<void> fetchTodo() async {
  //   print("featch todo printed..");
  //   todoList = await helper.getAllTodo();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    // print(" build function called ${todoList.length}");
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "TODOAPP",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("Users")
            .orderBy("createdBy", descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final docs = snapshot.data!.docs.map((doc) {
              return TodoModel.fromJson(
                doc.data(),
                doc.id,
              );
            }).toList();

            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, index) {
                  // todo data display ===>

                  final data = docs[index];
                  return Card(
                    color: data.color,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Text(
                          "${index + 1}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text("${data.title}"),
                      subtitle: Text("${data.description}"),
                      trailing: Container(
                        width: 100,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              alignment: Alignment.centerRight,
                              onPressed: () async {
                                final prenote = TodoModel(
                                  id: data.id,
                                  title: data.title,
                                  description: data.description,
                                  colorValue: data.colorValue,
                                );
                                //   final updateId = newList.id;
                                //   if(updateId ==null){
                                //      print("update value not working");
                                //   }

                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ToDoAddpage(
                                      todo: data,
                                    ),
                                  ),
                                );
                                // if (result != null) {
                                //   // await fetchTodo();
                                // }
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.grey,
                              ),
                            ),
                            IconButton(
                              // iconSize: 10,
                              alignment: Alignment.centerRight,
                              onPressed: () async {
                                final firebaseDelete = await FirebaseFirestore
                                    .instance
                                    .collection("Users")
                                    .doc(docs[index].id)
                                    .delete();
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text("${snapshot.hasError.toString()}"));
            } else if (!snapshot.hasData) {
              return Center(
                child: Text("No Data Found"),
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Text("no text found");
        },
      ),

      //  todoList.isEmpty
      //     ? Center(
      //         child: Text(
      //           "no task ",
      //           style: TextStyle(color: Colors.grey, fontSize: 34),
      //         ),
      //       )
      //     : ListView.builder(
      //         itemCount: todoList.length,
      //         itemBuilder: (context, index) {
      //           final newList = todoList[index];
      //           // final priorityColor = colorChoice(newList.prio);

      //           return GestureDetector(
      //             // onTap: ()=>updatePriority(index),
      //             child: Card(
      //               color: newList.color,
      //               child: ListTile(
      //                 title: Text(newList.title.toString()),
      //                 subtitle: Text(newList.description.toString()),
      //                 trailing: Row(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     //edit button
      //                     IconButton(
      //                         onPressed: () async {
      //                           print("===> update...");
      //                           // final prenote = TodoModel( id: newList.id, title:newList.title, description:newList.description);
      //                           //   final updateId = newList.id;
      //                           //   if(updateId ==null){
      //                           //      print("update value not working");
      //                           //   }

      //                           final result = await Navigator.push(
      //                               context,
      //                               MaterialPageRoute(
      //                                   builder: (context) => ToDoAddpage(
      //                                         todo: newList,
      //                                       )));
      //                           if (result != null) {
      //                             await fetchTodo();
      //                           }
      //                           setState(() {});
      //                         },
      //                         icon: Icon(Icons.edit)),
      //                     // delete button
      //                     IconButton(
      //                       onPressed: () {
      //                         showDialog(
      //                           context: context,
      //                           builder: (context) {
      //                             return AlertDialog(
      //                               buttonPadding: EdgeInsets.all(12),
      //                               alignment: Alignment.center,
      //                               content: Text("Sure you want to delete?"),
      //                               title: Text("delete"),
      //                               actions: [
      //                                 TextButton(
      //                                   onPressed: () async {
      //                                     var rowEffected = await helper
      //                                         .delete(todoList[index].id!);
      //                                     Navigator.pop(context);
      //                                     ScaffoldMessenger.of(context)
      //                                         .showSnackBar(
      //                                       SnackBar(
      //                                         content: Text("task deleted"),
      //                                       ),
      //                                     );
      //                                     await fetchTodo();
      //                                     setState(() {
      //                                       print("$rowEffected");
      //                                     });
      //                                   },
      //                                   child: Text("yes"),
      //                                 ),
      //                                 TextButton(
      //                                   onPressed: () {
      //                                     Navigator.pop(context);
      //                                     ScaffoldMessenger.of(
      //                                       context,
      //                                     ).showSnackBar(
      //                                       SnackBar(
      //                                         content: Text(
      //                                           "item is not deleted",
      //                                         ),
      //                                       ),
      //                                     );
      //                                   },
      //                                   child: Text("no"),
      //                                 ),
      //                               ],
      //                             );
      //                           },
      //                         );
      //                         setState(() {});
      //                       },
      //                       icon: Icon(Icons.delete),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           );
      //         },
      //       ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: Colors.grey,
        shape: CircleBorder(),
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ToDoAddpage(),
            ),
          );
          // print(" result :$result");
          // if (result != null) {
          //   // await getData();
          // } else {
          //   print("ERROR : $result");
          // }
          setState(() {});
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
