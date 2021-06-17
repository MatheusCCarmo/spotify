import 'package:flutter/material.dart';

class MusicArtistsItem extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      margin: EdgeInsets.only(
        top: 8,
        bottom: 8,
        right: 10,
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
                'assets/placeholder.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'test',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Theme.of(context).textTheme.headline5.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
