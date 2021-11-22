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
          return SimpleDialog(
              title: Text("What is your favorite mean of transport:"),
              children: <Widget>[
                SimpleDialogOption(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.flight),
                        Text(" Plane")
                      ],
                    ),
                    onPressed: () {
                      Navigator.pop(context, choicesList.plane);
                    }),
                SimpleDialogOption(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.directions_boat),
                        Text(" Boat")
                      ],
                    ),
                    onPressed: () {
                      Navigator.pop(context, choicesList.boat);
                    }),
                SimpleDialogOption(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Icon(Icons.directions_car),
                        Text(" Car")
                      ],
                    ),
                    onPressed: () {
                      Navigator.pop(context, choicesList.car);
                    }),
              ]);
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
            const Text('This is the choice you made : '),
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
