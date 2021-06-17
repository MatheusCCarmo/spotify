import 'package:flutter/material.dart';
import 'package:spotify/util/CustomColors.dart';

class RecentlyPlayedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 110,
      child: Column(
        children: [
          Image.asset(
          'assets/placeholder.png'),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'test test',
                style: TextStyle(color: CustomColors().white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
