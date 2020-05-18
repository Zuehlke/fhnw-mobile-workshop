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
                  Text(item.task, style: _style),
                  Icon(
                      item.isComplete == true
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: Colors.white)
                ]),
            onPressed: () => _toggle(item),
          )),
      onDismissed: (DismissDirection direction) => _delete(item),
    );
  }

  void _toggle(TodoItem item) async {
    item.isComplete = !item.isComplete;
    DB.update(TodoItem.table, item);
    refresh();
  }

  void _delete(TodoItem item) async {
    DB.delete(TodoItem.table, item);
    refresh();
  }

  void _save() async {
    Navigator.of(context).pop();
    TodoItem item = TodoItem(task: _task, isComplete: false);

    await DB.insert(TodoItem.table, item);
    setState(() => _task = '');
    refresh();
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

  void refresh() async {
    List<Map<String, dynamic>> _results = await DB.query(TodoItem.table);
    _tasks = _results.map((item) => TodoItem.fromMap(item)).toList();
    setState(() {});
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
