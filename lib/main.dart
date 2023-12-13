import 'package:flutter/material.dart';
import 'package:spin_the_bee/ListOfRestaurants.dart';
import 'package:spin_the_bee/NameInput.dart';
import 'package:spin_the_bee/SpinTheWheelButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<String> restaurantNames = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spin the bee',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Spin the bee'),
        ),
        body: Center(
          child: Column(
            children: [
              ListOfRestaurants(names: restaurantNames),
              NameInput(
                onSaveClicked: (name) {
                  setState(() {
                    restaurantNames.add(name);
                  });
                },
              ),
              SpinTheWheelButton()
            ],
          ),
        ),
      ),
    );
  }
}
