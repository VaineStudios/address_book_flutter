import 'package:flutter/material.dart';


class ToggleSwitch extends StatelessWidget{
  bool isActive;
  final Color activeColor;
  final Color defaultColor;
  final double height;
  final double width;

  ToggleSwitch({
    Key? key,
    this.isActive = false,
    this.activeColor = Colors.green,
    this.defaultColor = Colors.grey,
    this.height = 27,
    this.width = 55
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
      constraints: BoxConstraints.expand(width:width, height:height),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: isActive? activeColor : defaultColor,
        border: Border.all(width: 1, color: Colors.black26),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
          boxShadow:  const [BoxShadow(color:Colors.black87, blurRadius:10 , spreadRadius: -12)]

      ),
        duration: const Duration(milliseconds: 300),
        child: AnimatedAlign(
          alignment: isActive ?  Alignment.centerRight: Alignment.centerLeft,
          duration: const Duration(milliseconds: 300),
          child: Container(
            width:height-5, // set the width and height to be the same to ensure that the shape created will be a circle.
            height:height-5,
            decoration: const BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(50),),
              boxShadow:  [BoxShadow(color:Colors.black26, blurRadius: 4)]


            ),
          ),
        )
    );
  }
}