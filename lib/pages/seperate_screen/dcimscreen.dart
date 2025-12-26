import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DcimScreeenWidget extends StatelessWidget {
  const DcimScreeenWidget({
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
                    "DCIM",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          style: TextStyle(color: Colors.grey),
                          text: "2 items | 25/12/19 8:19 PM",
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
