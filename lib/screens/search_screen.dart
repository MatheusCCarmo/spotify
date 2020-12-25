import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Search',
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              Icon(
                Icons.search,
                size: 100,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Search Spotify",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                child: Text(
                  "Find your favorite songs, artists, albums, podcasts & videos, playlists and freinds.",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.headline6.color),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        SizedBox()
      ],
    );
  }
}
