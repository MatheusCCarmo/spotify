import 'package:flutter/material.dart';

class MusicPlaylistItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      margin: EdgeInsets.only(
        top: 10,
        right: 10,
      ),
      child: Row(
        children: [
          Image.network(
            "https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png",
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'teste',
                style: TextStyle(
                    color: Theme.of(context).textTheme.headline5.color),
              ),
              Text(
                'teste',
                style: TextStyle(
                    color: Theme.of(context).textTheme.headline6.color),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
