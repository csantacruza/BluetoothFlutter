import 'package:flutter/material.dart';
import 'package:navigator/firstPage.dart';
//import 'package:navigator/secondPage.dart';

import 'discoveryDevice.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        if(args is Widget){
          return MaterialPageRoute(
            builder: (_)=> DiscoveryPage(),
            //builder: (_) => SecondPage(data: args),
          );
        }
        return _errorRoute();
      default: 
      return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_){ 
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text('ERROR Path', style: TextStyle(fontSize: 15.0,fontWeight:FontWeight.w500))
      )

    );
    });
  }
}

