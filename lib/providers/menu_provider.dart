import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider(){
    cargarData();
  }

  Future<List<dynamic>>cargarData() async {
     final result = await rootBundle.loadString('data/menu_opts.json');
     Map data = json.decode(result);
     return opciones = data['rutas'];
  }  
}

final menuProvider = _MenuProvider();