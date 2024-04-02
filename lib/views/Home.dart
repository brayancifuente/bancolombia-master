import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int selecteIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [Text('data')]),
    );
  }
}
