
import 'package:flutter/material.dart';

class ReusableIcon extends StatelessWidget{

  final IconData icon;
  final String label;
  final color;

  ReusableIcon({required this.icon, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size: 80, color: color,),
        SizedBox(height: 15,),
        Text(label,style: TextStyle(
          fontSize: 18,
          color: Color(0xFF8D8E98),
        ),)
      ],
    );
  }

}
