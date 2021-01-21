import 'package:flutter/material.dart';

class ShortcutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(),
        itemCount: 6,
        itemBuilder: (context, index) {},
      ),
    );
  }
}
