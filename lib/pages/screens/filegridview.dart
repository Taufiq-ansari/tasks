import 'package:api/widget/customColumn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FileGRidViewScreen extends StatelessWidget {
  FileGRidViewScreen({super.key});

  List listOftext = [
    "android",
    "Biodata",
    "browser",
    "com.activisio\nn.callofduty.s",
    "com.faceboo\nk.orca",
    "  creative\nbiodatamaker",
    "DCIM",
    "Dcoder",
    "Download",
    "Dragon Ball Z",
    "lost of space 1",
    "lost of space 2",
    "MEGA",
    "MidasOversea",
    "MIUI",
    "MiVideo",
    "Music",
    "MXshare",
    "PSP",
    "sacred games",
    "subtitle",
    "systemui",
    "telegram",
    "tencent",
    "the witcher",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 8, right: 8, top: 50),
        itemCount: 25,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: CustomColumnWidget(
              text: "${listOftext[index]}",
              color: Colors.amber,
            ),
          );
        },
      ),
      //  body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Padding(
      //         padding:
      //             const EdgeInsets.only(left: 15.0, right: 15.0, top: 60.0),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             //  menu icon
      //             CustomRowWidget(icon: Icons.menu, color: Colors.white),
      //             // clock icon
//             CustomRowWidget(
      //                 icon: Icons.watch_later_outlined, color: Colors.white),
      //             // folder icon

      //             CustomRowWidget(
      //                 icon: CupertinoIcons.folder, color: Colors.blue),
      //             // search icon
      //             CustomRowWidget(icon: Icons.search, color: Colors.white),
      //           ],
      //         ),
      //       ),
      //       Divider(
      //         color: Colors.grey,
      //         thickness: 0.2,
      //       ),
      //       Padding(
      //         padding:
      //             const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 6),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             // icons
      //             Row(
      //               children: [
      //                 Stack(
      //                   children: [
      //                     Center(
      //                       child: Container(
      //                         height: 50,
      //                         width: 50,
      //                         // decoration: BoxDecoration(color: Colors.white),
      //                         child: CircularProgressIndicator(
      //                           backgroundColor: Colors.white,
      //                           color: Colors.amber,
      //                           value: 0.93,
      //                           strokeWidth: 2,
      //                         ),
      //                       ),
      //                     ),
      //                     Padding(
      //                       padding:
      //                           const EdgeInsets.only(left: 13.0, top: 15.0),
      //                       child: Text(
      //                         "93%",
      //                         style: TextStyle(color: Colors.amber),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 SizedBox(
      //                   width: 10.0,
      //                 ),
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       "Storage",
      //                       style: TextStyle(
      //                         fontSize: 12,
      //                         fontFamily: "MyFonts",
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     Text.rich(
      //                       TextSpan(
      //                         children: [
      //                           TextSpan(
      //                             text: "110.74GB",
      //                             style: TextStyle(
      //                               color: Colors.amber,
      //                               fontSize: 10,
      //                             ),
      //                           ),
      //                           TextSpan(
      //                             text: "/ 118.49GB",
      //                             style: TextStyle(
      //                                 color: Colors.grey, fontSize: 10),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //             // aroow icon
      //             Icon(
      //               Icons.arrow_forward_ios_rounded,
      //               color: const Color.fromARGB(255, 162, 159, 159),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Divider(
      //         thickness: 6,
      //         height: 10,
      //         color: const Color.fromARGB(255, 26, 26, 26),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 15.0, right: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Text(
      //               "Internal storage >",
      //               style: TextStyle(color: Colors.white54),
      //             ),

      //             //icon of grid folder
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Icon(
      //                   Icons.grid_view_outlined,
      //                   color: const Color.fromARGB(255, 206, 202, 202),
      //                   size: 16,
      //                 ),
      //                 SizedBox(
      //                   width: 20,
      //                 ),
      //                 // icon of menu...
      //                 Icon(
      //                   Icons.more_vert,
      //                   color: Color.fromARGB(255, 206, 202, 202),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //       Divider(
      //         thickness: 0.2,
      //         height: 10,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             CustomColumnWidget(
      //               text: "android",
      //               color: Colors.amber,
      //             ),
      //             CustomColumnWidget(text: "BioData", color: Colors.amber),
      //             CustomColumnWidget(text: "Browser", color: Colors.amber),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 18.0),
      //               child: CustomColumnWidget(
      //                 text: "com.activisio\nn.callofduty.s",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 18.0),
      //               child: CustomColumnWidget(
      //                 text: "com.faceboo\n \t \tk.orca",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(top: 16.0),
      //               child: CustomColumnWidget(
      //                 text: "\t  \tCreative\nbiodataMaker",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             CustomColumnWidget(text: "DCIM", color: Colors.amber),
      //             CustomColumnWidget(text: "Dcoder", color: Colors.amber),
      //             Stack(
      //               children: [
      //                 CustomColumnWidget(
      //                   text: "Download",
      //                   color: Colors.amber,
      //                 ),
      //                 Positioned(
      //                   top: 34,
      //                   left: 8,
      //                   child: CustomContainerWidget(
      //                     icon: Icons.download,
      //                     height: 14,
      //                     width: 14,
      //                     color: Colors.blue,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             CustomColumnWidget(
      //               text: "Dragon Ball Z",
      //               color: Colors.amber,
      //             ),
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(top: 10.0),
      //               child: CustomColumnWidget(
      //                 text: 'Lost in Space \n S01 E01-10',
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 10.0),
      //               child: CustomColumnWidget(
      //                 text: "Lost in Space \n S02 E01-10",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(bottom: 2.0),
      //               child: CustomColumnWidget(
      //                 text: "MEGA",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(bottom: 2.0),
      //               child: CustomColumnWidget(
      //                 text: "MidasOversea",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(bottom: 2.0),
      //               child: Stack(
      //                 children: [
      //                   CustomColumnWidget(text: "MIUI", color: Colors.amber),
      //                   Positioned(
      //                     top: 30,
      //                     left: 8,
      //                     child: CustomContainerWidget(
      //                       icon: Icons.abc,
      //                       height: 14,
      //                       width: 14,
      //                       color: Colors.orange,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(top: 18.0),
      //               child: CustomColumnWidget(
      //                 text: "MiVideoG-\n \tobal",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 8.0),
      //               child: CustomColumnWidget(
      //                 text: "Music",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 10.0),
      //               child: CustomColumnWidget(
      //                 text: "MXShare",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //                 padding: const EdgeInsets.only(top: 10.0),
      //                 child:
      //                     CustomColumnWidget(text: "PSP", color: Colors.amber)),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 26.0),
      //               child: CustomColumnWidget(
      //                 text: "  sacred\nGames sea",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(top: 20.0),
      //               child: CustomColumnWidget(
      //                 text: "Subtitles",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 18.0),
      //               child: CustomColumnWidget(
      //                 text: "systemui",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 18.0),
      //               child: Stack(
      //                 children: [
      //                   CustomColumnWidget(
      //                     text: "Telegram",
      //                     color: Colors.amber,
      //                   ),
      //                   Positioned(
      //                     top: 30,
      //                     left: 8,
      //                     child: CustomContainerWidget(
      //                       height: 16,
      //                       width: 16,
      //                       color: Colors.blue,
      //                       icon: Icons.telegram_sharp,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 18.0),
      //               child: CustomColumnWidget(
      //                 text: "tencent",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 18.0),
      //               child: CustomColumnWidget(
      //                 text: "The Witcher",
      //                 color: Colors.amber,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingButton(),
    );
  }
}
