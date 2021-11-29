import 'package:flutter/material.dart';
import './choice_list.dart';

class ModalBottomSheetWidget extends StatelessWidget
{

  const ModalBottomSheetWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              "What is your favorite mean of transport?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            const Divider(color: Colors.teal, thickness: 3),
            SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const<Widget>[
                    Icon(Icons.flight),
                    Text(" Plane")
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context, choicesList.plane);
                }),
            const Divider(color: Colors.teal),
            SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const<Widget>[
                    Icon(Icons.directions_boat),
                    Text(" Boat")
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context, choicesList.boat);
                }),
            const Divider(color: Colors.teal),
            SimpleDialogOption(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const<Widget>[
                    Icon(Icons.directions_car),
                    Text(" Car")
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context, choicesList.car);
                }),
            const Divider(color: Colors.teal),
          ],
        ),
      ),
    );
  }
}