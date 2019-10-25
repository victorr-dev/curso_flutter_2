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
        children: _crearOpciones()
      ),
    );
  }

  List<Widget> _crearOpciones(){

    List<Widget> lista = List<Widget>();

    for (String opt in _opciones) {
      
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
            ..add(Divider());
    }

    return lista;

  }
}