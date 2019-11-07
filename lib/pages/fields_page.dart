import 'package:flutter/material.dart';

class FieldsPages extends StatefulWidget {
  @override
  _FieldsPagesState createState() => _FieldsPagesState();
}

class _FieldsPagesState extends State<FieldsPages> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';

  //Se crea para poder tener acceso y modificar propiedades del input
  TextEditingController _inputFieldDateController = TextEditingController();

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
          _crearInputEmail(),
          Divider(),
          _crearInputPassword(),
          Divider(),
          _crearPersona(),
          Divider(),
          _crearFecha(context)
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

  Widget _crearInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Email',
        labelText: 'Email',
        helperText: 'Solo es el Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (e) {
        setState(() => _email = e);
      },
    );
  }

  Widget _crearInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        hintText: 'Password',
        labelText: 'Password',
        helperText: 'Password',
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock_open),
      ),
      onChanged: (e) {
        setState(() => _email = e);
      },
    );
  }


  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        hintText: 'Fecha',
        labelText: 'Fecha',
        helperText: 'Introduce la fecha',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.date_range),
      ),
      onTap: () {
        //Quita el focus del input
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
      context:  context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030)
    );

    if(picked != null){
      setState(() {
       _fecha = picked.toString(); 
       _inputFieldDateController.text = _fecha;
      });
    }


  }

  Widget _crearPersona() {
    return ListTile(
        title: Text('El nombre es: $_nombre'),
        subtitle: Text('Email: $_email'),
    );

  }
}