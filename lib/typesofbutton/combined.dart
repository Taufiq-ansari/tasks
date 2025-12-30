import 'package:flutter/material.dart';

class DropDownAndPopUp extends StatefulWidget {
  const DropDownAndPopUp({super.key});

  @override
  State<DropDownAndPopUp> createState() => _DropDownAndPopUpState();
}

class _DropDownAndPopUpState extends State<DropDownAndPopUp> {
  String isSelected = "first";
  List<String> values = ["first", "second", "third"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("DropDown-and-PopUp"),
          actionsPadding: EdgeInsets.only(right: 10.0),
          actions: [
            PopupMenuButton(

                // child: Text("$isSelected"),
                initialValue: isSelected,
                onSelected: (val) {
                  isSelected = val;
                  setState(() {});
                },
                itemBuilder: (context) {
                  return <PopupMenuEntry>[
                    PopupMenuItem(
                      child: Text("first"),
                      value: "first",
                    ),
                    PopupMenuItem(
                      child: Text("second"),
                      value: "second",
                    ),
                    PopupMenuItem(
                      child: Text("third"),
                      value: "third",
                    ),
                  ];
                }),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: DropdownButton(
                onChanged: (val) {},
                value: isSelected,
                borderRadius: BorderRadius.circular(10),
                items: values
                    .map<DropdownMenuItem>(
                      (newValue) => DropdownMenuItem(
                        child: Text("$newValue"),
                        value: newValue,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ));
  }
}
