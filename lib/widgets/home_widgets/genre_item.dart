import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 120,
      child: Column(
        children: [
          Image.asset('assets/placeholder.png'),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'test ttetstet etet ete teeste',
                style: TextStyle(
                  color: Theme.of(context).textTheme.headline6.color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
