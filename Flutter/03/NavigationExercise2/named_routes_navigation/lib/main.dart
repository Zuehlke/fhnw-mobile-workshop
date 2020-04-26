import 'package:flutter/material.dart';
import 'package:namedroutesnavigation/route_generator.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),

    // TODO Setze initialRoute auf HomeScreen.
    initialRoute: null,

    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch survey'),
          onPressed: () {
            // TODO Zeige SurveyScreen an wenn der Button gedrueckt wird (Tipp: Navigator.pushNamed() benutzen)
            // TODO Gib einen Titel für SurveyScreen mit (Tipp: arguments Property benutzen)

            // TODO Warte bis ein Ergebnis vom SurveyScreen zurueckgegeben wird (Tipp: await Keyword benutzen)
            var result;

            if (result != null) {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        // TODO Zeige den zurueckgegebenen Wert im Dialog an
                        title: Text('TODO'),

                        actions: <Widget>[
                          new FlatButton(
                            child: new Text('Ok.'),
                            onPressed: () {
                              // TODO Navigiere zurueck zum vorherigen Screen
                            },
                          )
                        ],
                      ));
            }
          },
        ),
      ),
    );
  }
}

class SurveyScreen extends StatelessWidget {
  // TODO Definiere eine Konstante routeName

  final String title;

  SurveyScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$title'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Which came first: the chicken or the egg?'),
                RaisedButton(
                  onPressed: () {
                    // TODO Navigiere zurueck zum HomeScreen und gib 'chicken' zurueck
                  },
                  child: Text('The chicken!'),
                ),
                RaisedButton(
                  onPressed: () {
                    // TODO Navigiere zurueck zum HomeScreen und gib 'egg' zurueck
                  },
                  child: Text('The egg!'),
                ),
              ]),
        ));
  }
}
