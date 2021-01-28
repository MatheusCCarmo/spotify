import 'package:flutter/material.dart';
import 'package:spotify/widgets/library_widgets/library_music_widgets/music_playlist_item.dart';

class MusicPlaylistsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MusicPlaylistItem(),
        MusicPlaylistItem(),
        MusicPlaylistItem(),
        MusicPlaylistItem(),
        MusicPlaylistItem(),
        MusicPlaylistItem(),
        MusicPlaylistItem(),
        MusicPlaylistItem(),
        MusicPlaylistItem(),
      ],
    );
  }
}
