import 'package:flutter/material.dart';
import 'package:spotify/widgets/library_widgets/library_music_widgets/music_artists_item.dart';
import 'package:spotify/widgets/library_widgets/library_music_widgets/music_search_field.dart';

class MusicArtistsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicSearchField('artists'),
        MusicArtistsItem(),
        MusicArtistsItem(),
        MusicArtistsItem(),
        MusicArtistsItem(),
        MusicArtistsItem(),
        MusicArtistsItem(),
        MusicArtistsItem(),
        MusicArtistsItem(),
        MusicArtistsItem(),
      ],
    );
  }
}
