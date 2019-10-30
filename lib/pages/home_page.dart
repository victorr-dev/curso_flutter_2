import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:curso_flutter_2/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  final _titleBar = "Components";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleBar),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    //return ListView(children: _createItems(),);

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _createItems(snapshot.data),);
      },
    );
  }

  List<Widget> _createItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: Icon(Icons.accessibility, color: Colors.blueAccent,),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blueAccent),
        onTap: () {},
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;
  }
}
