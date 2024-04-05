// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_player/config/colors.dart';

class TrendingSongSlider extends StatelessWidget {
  const TrendingSongSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItem = [
      Container(
        padding: EdgeInsets.all(20),
        // height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/cover.jpg"),
                fit: BoxFit.cover),
            color: divColor,
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: divColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/music_node.svg",
                            height: 22,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Tranding',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                      
                    ),
                  ],
                ),
                Spacer(), 
                 
              
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Dj wala badu ",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800
                  ),)

                 ],),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("badsah ",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: lableColor,
                  ),)

                 ],)
              
              ],
            )),
          ],
        ),
      )
    ];
    return CarouselSlider(
        items: sliderItem,
        options: CarouselOptions(
          height: 320,
          // aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, value) {},
          scrollDirection: Axis.horizontal,
        ));
  }
}
