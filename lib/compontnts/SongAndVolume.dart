// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player/config/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SongAndVolum extends StatefulWidget {
  const SongAndVolum({super.key});

  @override
  State<SongAndVolum> createState() => _SongAndVolumState();
}

class _SongAndVolumState extends State<SongAndVolum> {
  var value = 33.0;
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: 1,
      enableLoadingAnimation: true,
      axes: [
        RadialAxis(
          useRangeColorForAxis: true,
          startAngle: 0,
          endAngle: 180,
          canRotateLabels: false,
          interval: 10,
          isInversed: false,
          maximum: 100,
          minimum: 0,
          showAxisLine: true,
          showLabels: false,
          showTicks: true,
          ranges: [
            GaugeRange(
              startValue: 0,
              endValue: value,
              color: primaryColor,
            )
          ],
          pointers: [
            MarkerPointer(
              color: primaryColor,
              borderWidth: 20,
              value: value,
              onValueChanged: (value) {
                setState(() {
                  value = value;
                });
              },
              enableAnimation: true,
              enableDragging: true,
              markerType: MarkerType.circle,
              markerWidth: 20,
              markerHeight: 20,
            )
          ],
          annotations: [
            GaugeAnnotation(
              horizontalAlignment: GaugeAlignment.center,
              widget:  Container(
                width: 270,
                height: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  image: DecorationImage(
                    image:   AssetImage("assets/images/cover.jpg"),
                     fit: BoxFit.cover
                  ),
                  color: divColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
