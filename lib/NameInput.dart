import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  final myController = TextEditingController();

  final Function(String name) onSaveClicked;

  NameInput({super.key, required this.onSaveClicked});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 230,
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
            onSaveClicked(restaurantName);
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
