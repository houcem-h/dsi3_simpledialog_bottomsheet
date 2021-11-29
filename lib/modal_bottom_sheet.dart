import 'package:flutter/material.dart';

class ModalBottomSheetWidget extends StatelessWidget
{

  const ModalBottomSheetWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const<Widget>[],
        ),
      ),
    );
  }
}