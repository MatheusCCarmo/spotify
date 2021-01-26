import 'package:flutter/material.dart';
import 'package:spotify/widgets/home_widgets/genhre_item.dart';

class GenreWidget extends StatelessWidget {
  String genreName;

  GenreWidget(this.genreName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            genreName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              GenreItem(),
              GenreItem(),
              GenreItem(),
              GenreItem(),
              GenreItem(),
              GenreItem(),
              GenreItem(),
              GenreItem(),
            ],
          ),
        ),
      ],
    );
  }
}
