// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:music_player/compontnts/PlaySongHeaderButton.dart';
import 'package:music_player/compontnts/SongAndVolume.dart';
import 'package:music_player/compontnts/SongControlerButton.dart';
import 'package:music_player/compontnts/SongDetails.dart';
import 'package:music_player/compontnts/SongWave.dart';

class PlaySongPage extends StatelessWidget {
    final String songTitle;
  final String artistName;
  const PlaySongPage({super.key, required this.songTitle, required this.artistName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              PlaySongHeagerBUtton(),
              SizedBox(
                height: 10,
              ),
              SongAndVolum(),
              SizedBox(
                height: 10,
              ),
              SongDetails(
                artistName: artistName,
                songTitle: songTitle,
              ),
              SizedBox(height: 20),
              SOngWave(),
              // SizedBox(height: 20),
              Spacer(),
              SongControlerButton(),
            ],
          ),
        ),
      ),
    );
  }
}
