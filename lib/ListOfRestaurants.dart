import 'package:flutter/material.dart';

class ListOfRestaurants extends StatelessWidget {
  final List<String> names;

  const ListOfRestaurants({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return Column(children: [...names.map((element) => Text(element))]);
  }
}
