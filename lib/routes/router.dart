import 'package:curso_flutter_2/pages/slider_page.dart';
import 'package:flutter/material.dart';

import 'package:curso_flutter_2/pages/alert_page.dart';
import 'package:curso_flutter_2/pages/avatar_page.dart';
import 'package:curso_flutter_2/pages/home_page.dart';
import 'package:curso_flutter_2/pages/card_page.dart';
import 'package:curso_flutter_2/pages/animated_container.dart';
import 'package:curso_flutter_2/pages/fields_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes(){
return <String, WidgetBuilder> {
        '/'     : (BuildContext context)=> HomePage(),
        'alert' : (BuildContext context)=> AlertPage(),
        'avatar': (BuildContext context)=> AvatarPage(),
        'card'  : (BuildContext context)=> CardPage(),
        'animateContainer': (BuildContext context)=> AnimatePage(),
        'input'  : (BuildContext context) => FieldsPages(),
        'slider' :(BuildContext context) => SliderPage()
      };
}