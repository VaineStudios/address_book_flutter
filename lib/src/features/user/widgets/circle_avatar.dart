import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget{
  ImageProvider imageProvider;
  double radius;
  Color bgColor;
  double padding;

  CircleImage({
    Key? key,
    required this.imageProvider,
    this.radius = 40,
    this.bgColor = Colors.white,
    this.padding = 5,
  }): super(key:key);
  @override
  Widget build(BuildContext context) {

    return CircleAvatar(
      backgroundColor: bgColor,
      minRadius: radius,
      child:CircleAvatar(
        backgroundImage: imageProvider,
        minRadius: radius - padding,
      )
    );
  }
}