import 'package:flutter/material.dart';
import 'firstScreen.dart';

class SecondScreen extends StatelessWidget {
  final String data;

  SecondScreen({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Container(
          child: Text(data),
        ),
      ),
    );
  }
}
