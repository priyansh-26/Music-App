// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:music_player/config/colors.dart';
import 'package:music_player/controler/SongPlayerCantroller.dart';

class SongControlerButton extends StatelessWidget {
  const SongControlerButton({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerCantroller songPlayerCantroller = Get.put(SongPlayerCantroller());
    return Column(
      children: [
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "${songPlayerCantroller.cuttentTime}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Expanded(
                  child: Slider(
                value: 50,
                onChanged: (value) {},
                min: 0,
                max: 100,
              )),
              Text(
                "${songPlayerCantroller.totalTime}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/back.svg",
              width: 25,
            ),
            SizedBox(
              width: 20,
            ),
            Obx(
              () => songPlayerCantroller.isPlaying.value
                  ? InkWell(
                      onTap: () {
                        songPlayerCantroller.pausePlying();
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/pause.svg",
                              width: 25),
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        songPlayerCantroller.resumePlayer();
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: SvgPicture.asset("assets/icons/play.svg",
                              width: 25),
                        ),
                      ),
                    ),
            ),
            SizedBox(
              width: 20,
            ),
            SvgPicture.asset("assets/icons/next.svg", width: 25),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset("assets/icons/suffle.svg", width: 25),
            SvgPicture.asset("assets/icons/repeat.svg", width: 25),
            SvgPicture.asset("assets/icons/songbook.svg", width: 25),
            SvgPicture.asset("assets/icons/heart.svg", width: 25),
          ],
        )
      ],
    );
  }
}
