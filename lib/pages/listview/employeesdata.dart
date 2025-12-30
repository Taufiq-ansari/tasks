import 'package:api/pages/listview/employeesmodel.dart';
import 'package:api/pages/themechange.dart/themeclass.dart';
import 'package:flutter/material.dart';

class EmployeesWidget extends StatefulWidget {
  EmployeesWidget({super.key});

  @override
  State<EmployeesWidget> createState() => _EmployeesWidgetState();
}

class _EmployeesWidgetState extends State<EmployeesWidget> {
  List<EmployeeModel> employeeData = [
    EmployeeModel(
      e_id: 101,
      e_name: "jerry",
      e_role: "esport-player",
      age: 22,
    ),
    EmployeeModel(
      e_id: 102,
      e_name: "lucifer",
      e_role: "in-game-leader",
      age: 28,
    ),
    EmployeeModel(
      e_id: 103,
      e_name: "punisher-mirza",
      e_role: "support-player",
      age: 32,
    ),
    EmployeeModel(
      e_id: 104,
      e_name: "mazikeen",
      e_role: "entry-fragger",
      age: 27,
    ),
    EmployeeModel(
      e_id: 105,
      e_name: "sidhart",
      e_role: "noob",
      age: 29,
    ),
    EmployeeModel(
      e_id: 106,
      e_name: "atif",
      e_role: "support-player",
      age: 40,
    ),
    EmployeeModel(
      e_id: 107,
      e_name: "terminator",
      e_role: "esport-player",
      age: 34,
    ),
    EmployeeModel(
      e_id: 108,
      e_name: "aliza",
      e_role: "esport-player",
      age: 25,
    ),
    EmployeeModel(
      e_id: 109,
      e_name: "nishi",
      e_role: "esport-player",
      age: 26,
    ),
    EmployeeModel(
      e_id: 110,
      e_name: "albert",
      e_role: "new-player",
      age: 23,
    ),
  ];

  bool isToggle = false;
  bool isdark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isdark
          ? Themes.darktheme.primaryColor
          : Themes.lightheme.primaryColor,
      appBar: AppBar(
        backgroundColor: isdark
            ? Themes.darktheme.primaryColor
            : Themes.lightheme.primaryColor,
        title: Text(
          "Employees-data",
          style: TextStyle(
            color: isdark
                ? Themes.lightheme.primaryColor
                : Themes.darktheme.primaryColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: isdark ? Colors.black54 : Colors.white54,
                content: Text(
                  "currently not working yet",
                  style: TextStyle(
                      color: isdark ? Colors.white54 : Colors.black54),
                ),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: isdark
                ? Themes.lightheme.primaryColor
                : Themes.darktheme.primaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isToggle = !isToggle;
                print(
                  "listview and griview toogle button working sucessfully ",
                );
              });
            },
            icon: isToggle
                ? Icon(
                    Icons.grid_on_outlined,
                    color: isdark
                        ? Themes.lightheme.primaryColor
                        : Themes.darktheme.primaryColor,
                  )
                : Icon(
                    Icons.list,
                    color: isdark
                        ? Themes.lightheme.primaryColor
                        : Themes.darktheme.primaryColor,
                  ),
          ),
          Switch(
            activeColor: isdark
                ? Themes.lightheme.primaryColor
                : Themes.darktheme.primaryColor,
            value: isdark,
            onChanged: (val) {
              isdark = val;
              print("theme changing working successfully");
              setState(() {});
            },
          ),
        ],
      ),
      body: isToggle
          ? GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: employeeData.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      color: isdark
                          ? Themes.darktheme.primaryColor
                          : Themes.lightheme.primaryColor,
                      alignment: Alignment.center,
                      child: Text(
                        "${employeeData[i].e_name}",
                        style: TextStyle(
                          color: isdark
                              ? Themes.lightheme.primaryColor
                              : Themes.darktheme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return Card(
                  color: isdark
                      ? Themes.darktheme.primaryColor
                      : Themes.lightheme.primaryColor,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 12,
                      backgroundColor: isdark
                          ? Themes.darktheme.primaryColor
                          : Themes.lightheme.primaryColor,
                      child: Text(
                        "${employeeData[index].e_id}",
                        style: TextStyle(
                          color: isdark
                              ? Themes.lightheme.primaryColor
                              : Themes.darktheme.primaryColor,
                          fontSize: 10,
                        ),
                      ),
                    ),
                    trailing: Text(
                      " ${employeeData[index].age}",
                      style: TextStyle(
                        color: isdark
                            ? Themes.lightheme.primaryColor
                            : Themes.darktheme.primaryColor,
                      ),
                    ),
                    title: Text(
                      "${employeeData[index].e_name}",
                      style: TextStyle(
                        color: isdark
                            ? Themes.lightheme.primaryColor
                            : Themes.darktheme.primaryColor,
                      ),
                    ),
                    subtitle: Text(
                      "${employeeData[index].e_role}",
                      style: TextStyle(
                        color: isdark
                            ? Themes.lightheme.primaryColor
                            : Themes.darktheme.primaryColor,
                      ),
                    ),
                  ),
                );
              },
              itemCount: employeeData.length,
              separatorBuilder: (context, index) {
                return SizedBox();
              },
              physics: BouncingScrollPhysics(),
            ),
    );
  }
}
