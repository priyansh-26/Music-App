import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player/config/colors.dart';

class PlaySongHeagerBUtton extends StatelessWidget {
  const PlaySongHeagerBUtton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container( 
          width: 40,height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: divColor,
            borderRadius: BorderRadius.circular(10)

          ),
          child: Center(
            child: SvgPicture.asset("assets/icons/back_page.svg"),
          ),
        ),

          Container( 
          width: 40,height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: divColor,
            borderRadius: BorderRadius.circular(10)

          ),
          child: Center(
            child: SvgPicture.asset("assets/icons/setting.svg"),
          ),
        ),


      ],
    );
  }
}
