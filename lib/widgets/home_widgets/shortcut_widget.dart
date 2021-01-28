import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify/widgets/home_widgets/shortcut_item.dart';

class ShortcutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          ShortcutItem(),
          ShortcutItem(),
          ShortcutItem(),
          ShortcutItem(),
          ShortcutItem(),
          ShortcutItem(),
        ],
      ),
    );
  }
}
