import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  List<int> _lista = [1,2,3,4,5];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('List Page'),
    ),
    body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemCount: _lista.length,
      itemBuilder: (BuildContext context, int index){
        final imagen = _lista[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/id/$imagen/237/200'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }
}