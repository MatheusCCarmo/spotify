import 'package:flutter/material.dart';
import 'package:spotify/util/CustomColors.dart';

class MusicSearchField extends StatelessWidget {
  String searchName;

  MusicSearchField(this.searchName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width - 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: CustomColors().darkGrey,
            ),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: CustomColors().lightGrey,
                  ),
                  labelText: 'Find in ${searchName}',
                  labelStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: CustomColors().lightGrey,
                  )),
            ),
          ),
          GestureDetector(
            child: Container(
              width: 62,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: CustomColors().darkGrey,
              ),
              child: Text(
                'Filters',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: CustomColors().lightGrey,
                ),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
