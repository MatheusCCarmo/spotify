import 'package:flutter/material.dart';
import 'package:spotify/util/CustomColors.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Search',
            style: TextStyle(
                fontSize: 28,
                color: CustomColors().white,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width - 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    labelText: 'Artists, musics or podcasts',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    )),
              ),
            ),
            InkWell(
              child: Icon(Icons.camera_alt_outlined),
              onTap: () {},
            )
          ],
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
