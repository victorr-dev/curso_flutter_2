import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _lista = List();
  int _ultimo = 0;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        _agregar10();
      }
    });
  }
  
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
      controller: _scrollController,
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

  _agregar10(){
    for (var i = 0; i < 10; i++) {
      _ultimo++;
      _lista.add(_ultimo);
    }

    setState(() {
      
    });
  }
}