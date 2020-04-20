import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hero',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Superhero Generator'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO Definiere einen TextEditingController, um Eingaben aus dem TextField verarbeiten zu können

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(

            /*
              TODO
              Stelle folgendes zentriert dar:

              1. Das Logo (img/flutterhero.png, Achtung: Im pubspec.yaml muss der Pfad
                 zum Logo definiert sein!)
              2. Einen Text, der den User auffordert einen Namen einzugeben
              3. Ein Textfeld (mit "Name" als Platzhalter)
              4. Einen "Submit" Button

              Implementiere den Button so, dass nach dem Klick (Tipp: showDialog()
              in onPressed() Methode zurueckgeben) ein AlertDialog mit "Hi {eingegebener Name}!"
              angezeigt wird.

           */
            ),
      ),
    );
  }
}
