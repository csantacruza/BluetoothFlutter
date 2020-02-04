import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Uno"),
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/second',
              arguments: Aditional().build(context),
            );
          },
        ),
      ),
    );
  }
}

class Aditional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Image(
            image: AssetImage('images/ardilla.jpg'),
            height: 500,
            semanticLabel: "Ardillita",
          ),
        ));
  }
}
