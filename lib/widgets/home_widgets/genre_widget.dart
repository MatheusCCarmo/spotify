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
