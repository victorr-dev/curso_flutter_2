import 'package:flutter/material.dart';

class FieldsPages extends StatefulWidget {
  @override
  _FieldsPagesState createState() => _FieldsPagesState();
}

class _FieldsPagesState extends State<FieldsPages> {

  String _nombre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(), 
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //Al entrar se hace focus
      //autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
      ),
      onChanged: (e) {
        setState(() {
         _nombre = e; 
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
        title: Text('El nombre es: $_nombre'),
    );

  }
}