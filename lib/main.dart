import 'package:flutter/material.dart';

import 'package:curso_flutter_2/pages/alert_page.dart';
import 'package:curso_flutter_2/routes/router.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationsRoutes(),
      //Aparecen rutas que no estan
      onGenerateRoute: (settings) {
        print('ruta llamada ${settings.name}');
        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
        );
      },
    );
  }
}