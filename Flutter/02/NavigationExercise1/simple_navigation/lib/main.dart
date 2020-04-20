import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    // The route defined in the home property is displayed first when the application is started,
    // unless initialRoute is defined.
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open second route'),
          onPressed: () {
            /*
              TODO
              Verwende das Navigator Widget, um SecondRoute dem Navigator-Stack hinzuzufuegen
           */
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(

          /*
            TODO
            Fuege einen Button hinzu, der beim Klick wieder zurueck zu FirstRoute navigiert
         */

          ),
    );
  }
}
