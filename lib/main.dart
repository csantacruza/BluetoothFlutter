import 'package:flutter/material.dart';
import 'package:navigator/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

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
