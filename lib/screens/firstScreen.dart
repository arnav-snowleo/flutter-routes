import 'package:flutter/material.dart';
import 'package:routes/routing/routing_constants.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('this is first Screen'),
            RaisedButton(
              child: Text('Go to Next Screen'),
              onPressed: () {
                Navigator.of(context).pushNamed(secondScreenRoute,
                    arguments: 'I am the data passed from first page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
