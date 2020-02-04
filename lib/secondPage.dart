import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final Widget data;

  SecondPage({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: data,
      );
  }
}