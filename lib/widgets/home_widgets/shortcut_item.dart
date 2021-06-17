import 'package:flutter/material.dart';
import 'package:spotify/util/CustomColors.dart';

class ShortcutItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: CustomColors().darkGrey,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5), topLeft: Radius.circular(5)),
              child: Image.asset(
                  'assets/placeholder.png'),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                child: Text(
                  'test test test',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.headline5.color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
