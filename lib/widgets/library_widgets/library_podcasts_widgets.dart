import 'package:flutter/material.dart';
import 'package:spotify/util/CustomColors.dart';

class LibraryPodcastsWidget extends StatefulWidget {
  @override
  _LibraryMusicWidgetState createState() => _LibraryMusicWidgetState();
}

class _LibraryMusicWidgetState extends State<LibraryPodcastsWidget> {
  Color selectedColor = CustomColors().white;

  Color unselectedColor = CustomColors().lighGrey;

  List<bool> selectItems = [true, false, false];

  void selectLibrary(int index) {
    for (int i = 0; i < selectItems.length; i++) {
      if (i == index) {
        selectItems[i] = true;
      } else {
        selectItems[i] = false;
      }
    }
  }

  Widget selectedWidget(String name, int index) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 25),
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            border: selectItems[index]
                ? Border(
                    bottom: BorderSide(
                      color: Theme.of(context).accentColor,
                      width: 2,
                    ),
                  )
                : Border()),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 15,
            color: selectItems[index] ? selectedColor : unselectedColor,
          ),
        ),
      ),
      onTap: () {
        setState(() {
          selectLibrary(index);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [
            selectedWidget('Episodes', 0),
            selectedWidget('Downloads', 1),
            selectedWidget('Shows', 2),
          ]),
        ],
      ),
    );
  }
}
