import 'package:flutter/material.dart';
import 'package:spotify/widgets/home_widgets/genre_widget.dart';
import 'package:spotify/widgets/home_widgets/recently_played_widget.dart';
import 'package:spotify/widgets/home_widgets/shortcut_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Good morning",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.settings_outlined,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(height: 15),
          ShortcutWidget(),
          SizedBox(height: 30),
          RecentlyPlayedWidget(),
          SizedBox(height: 30),
          GenreWidget('Rock'),
          SizedBox(height: 30),
          GenreWidget('Pop'),
        ],
      ),
    );
  }
}
