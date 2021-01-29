import 'package:flutter/material.dart';
import 'package:spotify/widgets/library_widgets/library_music_widgets/music_playlists_item.dart';
import 'package:spotify/widgets/library_widgets/library_music_widgets/music_search_field.dart';

class MusicPlaylistsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicSearchField('playlists'),
        MusicPlaylistsItem(),
        MusicPlaylistsItem(),
        MusicPlaylistsItem(),
        MusicPlaylistsItem(),
        MusicPlaylistsItem(),
        MusicPlaylistsItem(),
        MusicPlaylistsItem(),
        MusicPlaylistsItem(),
        MusicPlaylistsItem(),
      ],
    );
  }
}
