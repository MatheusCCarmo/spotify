import 'package:flutter/material.dart';
import 'package:spotify/util/CustomColors.dart';
import 'package:spotify/widgets/library_widgets/library_music_widget.dart';
import 'package:spotify/widgets/library_widgets/library_podcasts_widgets.dart';

class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  Color selectedColor = CustomColors().white;
  Color unselectedColor = CustomColors().lightGrey;
  List<bool> selectedItem = [true, false];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              GestureDetector(
                child: Text(
                  'Music',
                  style: TextStyle(
                      fontSize: 28,
                      color: selectedItem[0] ? selectedColor : unselectedColor,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  setState(() {
                    selectedItem[0] = true;
                    selectedItem[1] = false;
                  });
                },
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Text(
                  'Podcasts',
                  style: TextStyle(
                      fontSize: 28,
                      color: selectedItem[1] ? selectedColor : unselectedColor,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  setState(() {
                    selectedItem[1] = true;
                    selectedItem[0] = false;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          selectedItem[0] ? LibraryMusicWidget() : LibraryPodcastsWidget(),
        ],
      ),
    );
  }
}
