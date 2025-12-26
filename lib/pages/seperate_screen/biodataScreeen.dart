import 'package:flutter/material.dart';

class BiodataFolderWidget extends StatelessWidget {
  const BiodataFolderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.folder,
                size: 60,
                color: Colors.amber,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  text
                  Text(
                    "Biodata",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          style: TextStyle(color: Colors.grey),
                          text: "1 items | 25/12/19 08:19 AM",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
