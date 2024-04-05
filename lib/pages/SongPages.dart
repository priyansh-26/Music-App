// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/compontnts/SongTile.dart';
import 'package:music_player/compontnts/SongPagesHeader.dart';
import 'package:music_player/compontnts/TrendingSongSlider.dart';
import 'package:music_player/config/colors.dart';
import 'package:music_player/controler/SongDataCantroller.dart';
import 'package:music_player/controler/SongPlayerCantroller.dart';
import 'package:music_player/pages/PlaySongPage.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    SongDataController songDataController = Get.put(SongDataController());
    SongPlayerCantroller songPlayerCantroller = Get.put(SongPlayerCantroller());
    return Scaffold(
      body: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                SongPageHeader(),
                SizedBox(
                  height: 20,
                ),
                TrendingSongSlider(),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            songDataController.isDeviceSogn.value = false;
                          },
                          child: Text("Cloud Song",
                              // style: Theme.of(context).textTheme.titleLarge,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: songDataController.isDeviceSogn.value
                                        ? lableColor
                                        : primaryColor,
                                    fontSize: 15,
                                  ))),
                      InkWell(
                        onTap: () {
                          songDataController.isDeviceSogn.value = true;
                        },
                        child: Text("Device Song ",
                            // style: Theme.of(context).textTheme.titleLarge,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                  color: songDataController.isDeviceSogn.value
                                      ? primaryColor
                                      : lableColor,
                                  fontSize: 15,
                                )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(() => songDataController.isDeviceSogn.value
                    ? Column(
                        children: songDataController.localSongList.value
                            .map((e) => SongTile(
                                  onPress: () {
                                    songPlayerCantroller.playLocalAudio(e.data);
                                    Get.to(PlaySongPage(
                                      songTitle: e.title,

                                      artistName: e.artist!,
                                      
                                    ));
                                  },
                                  songName: e.title,
                                ))
                            .toList(),
                      )
                    : Column(
                        children: [
                          // SongTile(),
                          // SongTile(),
                          // SongTile(),
                          // SongTile(),
                          // SongTile(),
                        ],
                      ))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
