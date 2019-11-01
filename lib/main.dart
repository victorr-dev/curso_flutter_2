import 'package:curso_flutter_2/pages/alert_page.dart';
import 'package:curso_flutter_2/pages/avatar_page.dart';
import 'package:flutter/material.dart';
import 'package:curso_flutter_2/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/'     : (BuildContext context)=> HomePage(),
        'alert' : (BuildContext context)=> AlertPage(),
        'avatar': (BuildContext context)=> AvatarPage()
      },
    );
  }
}