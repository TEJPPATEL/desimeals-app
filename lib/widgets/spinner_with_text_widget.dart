import 'package:flutter/material.dart';

class SpinnerWithText extends StatelessWidget {
  final String text;
  const SpinnerWithText({super.key, this.text = 'Loading'});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          Text(text),
        ],
      ),
    );
  }
}
