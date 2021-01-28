import 'package:flutter/material.dart';
import 'package:spotify/widgets/home_widgets/recently_played_item.dart';

class RecentlyPlayedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Recently played',
            style: TextStyle(
              color: Theme.of(context).textTheme.headline5.color,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 170,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
              RecentlyPlayedItem(),
            ],
          ),
        ),
      ],
    );
  }
}
