import './simple_dialog_widget.dart';
import 'package:flutter/material.dart';

import './choice_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyDialogExampleAppPage(title: 'Dialog Example App'),
    );
  }
}

class MyDialogExampleAppPage extends StatefulWidget {
  const MyDialogExampleAppPage({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<MyDialogExampleAppPage> createState() => _MyDialogExampleAppState();
}

class _MyDialogExampleAppState extends State<MyDialogExampleAppPage> {
  String _choice = "No choice yet!";

  void _setChoice(String choice) {
    setState(() {
      _choice = choice;
    });
  }

    Future<void> _pickChoice() async {
    switch (await showDialog<choicesList>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialogWidget();
        })) {
      case choicesList.boat:
        _setChoice("Boat");
        break;
      case choicesList.car:
        _setChoice("Car");
        break;
      case choicesList.plane:
        _setChoice("Plane");
        break;
        default:
        _setChoice("No choice !");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Colors.teal,
                textColor: Colors.white,
                child: const Text("open Simple dialog"),
                onPressed: _pickChoice),
            const Padding(padding: EdgeInsets.only(bottom: 30)),
            const Text('This is the choice you made : '),
            const Padding(padding: EdgeInsets.only(bottom: 15)),
            Text(
              _choice,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.tealAccent,
    );
  }
}
