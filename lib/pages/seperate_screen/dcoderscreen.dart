import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DcoderScreenWidget extends StatelessWidget {
  const DcoderScreenWidget({
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
                    "Dcoder",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          style: TextStyle(color: Colors.grey),
                          text: "1 items | 01/09/19 7.44 PM",
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
