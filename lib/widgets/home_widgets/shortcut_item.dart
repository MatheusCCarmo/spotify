import 'package:flutter/material.dart';
import 'package:spotify/util/CustomColors.dart';

class ShortcutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors().grey,
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
          ),
          Text(
            "title",
            style: TextStyle(color: CustomColors().white),
          )
        ],
      ),
    );
  }
}
