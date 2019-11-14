import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 200.0;
  bool _checkSlider = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider Page'),),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
        children: <Widget>[
          _crearSlider(),
          _crearCheckbox(),
          Expanded(child: _crearImagen())
        ],
      ),),
    );
  }

  Widget  _crearSlider() {
    return Slider(
      activeColor: Colors.blueAccent,
      label: 'Tamaño de la imagen',
      divisions: 100,
      min: 100.0,
      max: 500.0,
      value: _valorSlider,
      onChanged:_checkSlider ? null  : (newValue) {
        setState(() {
          _valorSlider = newValue;
        });
      },
    );
  }

  Widget _crearCheckbox() {
    /* return Checkbox(
      value: _checkSlider,
      onChanged: (valor){
        setState(() {
          _checkSlider = valor;
        });
      },
    ); */

    return CheckboxListTile(
      title: Text('Activar Slider'),
      value: _checkSlider,
      onChanged: (valor){
        setState(() {
          _checkSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://http2.mlstatic.com/calcomania-sticker-vinil-logo-superman-1-envio-gratis-D_NQ_NP_850451-MLM31222436090_062019-F.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}