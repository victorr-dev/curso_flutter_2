import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final _opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearOpcionesB()
      ),
    );
  }

  ////List<Widget> _crearOpciones(){
////
  ////  List<Widget> lista = List<Widget>();
////
  ////  for (String opt in _opciones) {
  ////    
  ////    final tempWidget = ListTile(
  ////      title: Text(opt),
  ////    );
////
  ////    lista..add(tempWidget)
  ////          ..add(Divider());
  ////  }
////
    //return lista;

  //}

  List<Widget> _crearOpcionesB(){
    return _opciones.map((opt) {
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(opt),
              subtitle: Text("data"),
              leading: Icon(Icons.access_alarm),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(),
          ],
        );
    }).toList();
  }
}