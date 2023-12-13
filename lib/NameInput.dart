import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 300,
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                labelText: 'Enter your restaurant name',
              ),
            ),
          ),
        ),
        OutlinedButton(
          onPressed: () {
            final restaurantName = myController.text;
            print('Your restaurant name is $restaurantName');
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
