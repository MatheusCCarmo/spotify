import 'package:flutter/material.dart';

class MusicPlaylistsItem extends StatelessWidget {
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
          Image.asset(
              'assets/placeholder.png'),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'test',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).textTheme.headline5.color),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'test',
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).textTheme.headline6.color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
