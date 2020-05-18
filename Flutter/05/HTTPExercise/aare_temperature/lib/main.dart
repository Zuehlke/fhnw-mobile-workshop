import 'package:aaretemperature/water_temp_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'aare_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AareService>.value(
        value: AareService(),
        child: MaterialApp(
          title: 'Aare Temp',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: WaterTempPage(),
        ));
  }
}
