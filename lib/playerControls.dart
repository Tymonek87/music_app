import 'package:flutter/material.dart';
import 'package:music_app/color.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Controls(icon:Icons.repeat),
        Controls(icon: Icons.skip_previous,),
        PlayControl(icon:Icons.play_arrow),
        Controls(icon: Icons.skip_next,),
        Controls(icon: Icons.shuffle),
  ],
      ),
    );
  }
}

class PlayControl extends StatelessWidget {

  final IconData icon;
  const PlayControl({Key key,this.icon}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,boxShadow: [
        BoxShadow(color: darkPrimaryColor.withOpacity(0.5),
            offset: Offset(5,10),
            spreadRadius: 3,
            blurRadius: 10
        ),
        BoxShadow(color: Colors.white,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)
      ]
      ),
      child: Stack(
        children: <Widget>[
          Center(child: Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(color: Colors.grey,shape: BoxShape.circle,
          boxShadow: [
          BoxShadow(color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5,10),
              spreadRadius: 3,
              blurRadius: 10
          ),
          BoxShadow(color: Colors.white,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)]
      ),
          ),),
          Center(child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: primaryColor,shape: BoxShape.circle),
            child: Center(child: Icon(icon,size: 50,color: darkPrimaryColor,),),
          ),)
        ],
      ),
    );
  }
}



class Controls extends StatelessWidget {

  final IconData icon;
 const Controls({Key key,this.icon}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60 ,
      width: 60,

      decoration: BoxDecoration(
      color: primaryColor,
        shape: BoxShape.circle,boxShadow: [
          BoxShadow(color: darkPrimaryColor.withOpacity(0.5),
          offset: Offset(5,10),
          spreadRadius: 3,
          blurRadius: 10
          ),
      BoxShadow(color: Colors.white,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)
      ]
      ),
      child: Stack(
        children: <Widget>[
          Center(child: Container(
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(color: Colors.grey,shape: BoxShape.circle,
                boxShadow: [
                BoxShadow(color: darkPrimaryColor.withOpacity(0.5),
        offset: Offset(5,10),
        spreadRadius: 3,
        blurRadius: 10
    ),
    BoxShadow(color: Colors.white,offset: Offset(-3,-4),spreadRadius: -2,blurRadius: 20)]
            ),
          ),
          ),
          Center(child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(color: primaryColor,shape: BoxShape.circle),
         child: Center(child: Icon(icon,color: darkPrimaryColor,),),
          ),)
        ],
      ),
    );
  }
}

