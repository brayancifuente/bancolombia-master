import 'package:flutter/material.dart';

class IconLabelWidget extends StatelessWidget {
  final String iconPath;
  final String label;
  final Color color;

  IconLabelWidget(
      {required this.iconPath, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: color,
          radius: 24,
          child: Image.asset(iconPath, width: 20, height: 20),
        ),
        Text(label,
            style: TextStyle(color: Colors.black, fontSize: 9),
            textAlign: TextAlign.center),
      ],
    );
  }
}
