import 'package:flutter/material.dart';


class ToggleSwitch extends StatefulWidget{
  bool toggleState;
  ToggleSwitch({Key? key, this.toggleState = false}): super(key: key);

  @override
  State<ToggleSwitch> createState() => _ToggleSwitch();


}

class _ToggleSwitch extends State<ToggleSwitch>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap:(){
        setState(() {
          widget.toggleState = !widget.toggleState;
        });
      },
      child: AnimatedContainer(
        constraints: const BoxConstraints.expand(width:55, height:27),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: widget.toggleState? Colors.green : Colors.grey,
          border: Border.all(width: 1, color: Colors.black26),
          borderRadius: const BorderRadius.all(Radius.circular(50)),
            boxShadow:  const [BoxShadow(color:Colors.black87, blurRadius:10 , spreadRadius: -12)]

        ),
          duration: const Duration(milliseconds: 300),
          child: AnimatedAlign(
            alignment: widget.toggleState ?  Alignment.centerRight: Alignment.centerLeft,
            duration: const Duration(milliseconds: 300),
            child: Container(
              width:25,
              height:25,
              decoration: const BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(50),),
                boxShadow:  [BoxShadow(color:Colors.black26, blurRadius: 4)]


              ),
            ),
          )
      ),
    );
  }
}