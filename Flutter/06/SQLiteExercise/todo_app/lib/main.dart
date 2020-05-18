import 'package:flutter/material.dart';
import 'package:todoapp/models/todo_item.dart';
import 'package:todoapp/services/db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DB.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'SQLite Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _task;

  List<TodoItem> _tasks = [];

  TextStyle _style = TextStyle(color: Colors.white, fontSize: 20);

  List<Widget> get _items => _tasks.map((item) => format(item)).toList();

  Widget format(TodoItem item) {
    return Dismissible(
      key: Key(item.id.toString()),
      child: Padding(
          padding: EdgeInsets.all(12),
          child: FlatButton(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // TODO 8: Task anzeigen
                  // TODO 8: Icon anzeigen, das den Status des Tasks anzeigt (erledigt/offen)
                ]),
            onPressed: () => _toggle(item),
          )),
      onDismissed: (DismissDirection direction) => _delete(item),
    );
  }

  void refresh() async {
    // TODO 4: Eintraege aus DB holen und in _results Variable speichern
    List<Map<String, dynamic>> _results;

    // TODO 4: _tasks mit Eintraegen in _results befuellen

    setState(() {});
  }

  void _save() async {
    Navigator.of(context).pop();

    // TODO 5: TodoItem erstellen und in DB speichern

    // TODO 5: Inhalt der _task Variable zuruecksetzen (in setState) nach Speichern

    // TODO 5: Daten aktualisieren
  }

  void _toggle(TodoItem item) async {
    // TODO 6: Status auf TodoItem togglen (erledigt/offen)

    // TODO 6: DB mit item updaten

    refresh();
  }

  void _delete(TodoItem item) async {
    // TODO 7: Delete Funktion implementieren, um einzelnes TodoItem aus DB zu entfernen

    // TODO 7: Daten aktualisieren
  }

  void _create(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Todo hinzufügen"),
            actions: <Widget>[
              FlatButton(
                  child: Text('Abbrechen'),
                  onPressed: () => Navigator.of(context).pop()),
              FlatButton(child: Text('Speichern'), onPressed: () => _save())
            ],
            content: TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: 'Todo', hintText: 'z.B. Movie App erstellen'),
              onChanged: (value) {
                _task = value;
              },
            ),
          );
        });
  }

  @override
  void initState() {
    refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text(widget.title)),
        body: Center(child: ListView(children: _items)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _create(context);
          },
          tooltip: 'Neues Todo',
          child: Icon(Icons.library_add),
        ));
  }
}
