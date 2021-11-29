import 'package:flutter/material.dart';
import './choice_list.dart';

class SimpleDialogWidget extends StatelessWidget
{
  const SimpleDialogWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: const Text("What is your favorite mean of transport:"),
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
  }


}