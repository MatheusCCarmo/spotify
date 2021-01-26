import 'package:flutter/material.dart';
import 'package:spotify/util/CustomColors.dart';

class GenreItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 120,
      child: Column(
        children: [
          Image.network(
            "https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png",
            // fit: BoxFit.fill,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'teste teste',
              style: TextStyle(color: CustomColors().white),
            ),
          ),
        ],
      ),
    );
  }
}