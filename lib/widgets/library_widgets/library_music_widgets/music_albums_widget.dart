import 'package:flutter/material.dart';
import 'package:spotify/widgets/library_widgets/library_music_widgets/music_albums_item.dart';
import 'package:spotify/widgets/library_widgets/library_music_widgets/music_search_field.dart';

class MusicAlbumsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicSearchField('albums'),
        MusicAlbumsItem(),
        MusicAlbumsItem(),
        MusicAlbumsItem(),
        MusicAlbumsItem(),
        MusicAlbumsItem(),
        MusicAlbumsItem(),
        MusicAlbumsItem(),
        MusicAlbumsItem(),
        MusicAlbumsItem(),
      ],
    );
  }
}
