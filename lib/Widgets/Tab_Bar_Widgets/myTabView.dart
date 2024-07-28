import 'package:flutter/material.dart';

class MyTabView extends StatelessWidget {
  final Color myColor;
  final IconData myIcon;

  const MyTabView({super.key, required this.myColor, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColor,
      child: Center(
        child: Icon(
          myIcon,
          size: 110,
        )
      ),
    );
  }
}
