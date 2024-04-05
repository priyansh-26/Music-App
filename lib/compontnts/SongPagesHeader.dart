// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SongPageHeader extends StatelessWidget {
  const SongPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        SvgPicture.asset("assets/icons/big_logo.svg",width: 60,),
        SizedBox(width: 20,),
        Text("MUSICANZA",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          
        ),)

        
        
      ],
    );
  }
}
