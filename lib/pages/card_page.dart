import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardPage'),
      ),
      body: ListView(
        // all: para todos los lados
        // simetric: utiliza horizontal y vertical
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo1()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.archive, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Soy un subtitulo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar', style: TextStyle(color: Colors.blue),),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok', style: TextStyle(color: Colors.blue)),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
