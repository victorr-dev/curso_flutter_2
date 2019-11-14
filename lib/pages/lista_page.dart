import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _lista = List();
  int _ultimo = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_agregar10();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _lista.length,
      itemBuilder: (BuildContext context, int index) {
        final imagen = _lista[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/id/$imagen/237/200'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }

  Widget _crearLoading() {
    if(_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),

            ],
          ),
          SizedBox(height: 15.0 ,)
        ],
      );
    }else{
      return Container();
    }
  }

  _agregar10() {
    for (var i = 0; i < 10; i++) {
      _ultimo++;
      _lista.add(_ultimo);
    }

    setState(() {});
  }

  Future<Null> _fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = Duration(seconds: 2);
    return new Timer(duration, respuestaHttp);
  }

  void respuestaHttp() {
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 250)
    );

    _agregar10();

  }
}
