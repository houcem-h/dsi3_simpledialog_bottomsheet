import 'package:flutter/material.dart';

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
  const MyDialogExampleAppPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyDialogExampleAppPage> createState() => _MyDialogExampleAppState();
}

class _MyDialogExampleAppState extends State<MyDialogExampleAppPage> {

  String _choice = "No choice yet!";

  void _pickChoice() {

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
                onPressed: _pickChoice
            ),
            const Text('This is the choice you made : '),
            Text(
              _choice,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.tealAccent,
    );
  }
}
