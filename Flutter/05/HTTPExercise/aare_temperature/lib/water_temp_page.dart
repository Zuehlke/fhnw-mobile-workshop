import 'package:aaretemperature/aare_service.dart';
import 'package:flutter/material.dart';

class WaterTempPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO 6: AareService nutzen um Daten zu laden

    return Scaffold(
        appBar: AppBar(
          title: Text('Aaare temperature @ Bern'),
        ),
        body: Center(
          // TODO 8: temperatureWidget anzeigen
          child: null,
        ));
  }

  Widget temperatureWidget(AareService aareService, BuildContext context) {
    // TODO 7: Ladeanimation anzeigen wenn noetig (z.B. CircularProgressIndicator)

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(aareService.aareData.temperature.toString() + '°C',
            style: Theme.of(context).textTheme.headline4),
        Text('Data from ${aareService.aareData.source}'),
        Text('Measured at ${aareService.aareData.date}')
      ],
    );
  }
}
