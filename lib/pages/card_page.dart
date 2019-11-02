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
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 10.0,
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
                child: Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.blue),
                ),
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

  Widget _cardTipo2() {
    return Card(
      //Mantener los bordes de la tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /* Carga de imagen normal 
          Image(
            image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
          ), */
          Container(
              padding: EdgeInsets.all(10.0), child: Text('Image description'))
        ],
      ),
    );
  }
}
