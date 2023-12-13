import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpinTheWheelButton extends StatelessWidget {
  final Function() onSpinButtonTapped;

  const SpinTheWheelButton({super.key, required this.onSpinButtonTapped});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onSpinButtonTapped, child: Text("Spin the bee"));
  }
}
