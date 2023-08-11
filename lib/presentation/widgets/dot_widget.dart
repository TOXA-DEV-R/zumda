import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const DotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
        border: Border.all(
          width: 1,
        ),
      ),
    );
  }
}
