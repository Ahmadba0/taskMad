import 'package:flutter/material.dart';

class SecondTextWelcomeScreen extends StatelessWidget {
  const SecondTextWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Transforming your outdoor spaces into\nbeautiful retreats',
        style: Theme.of(context).textTheme.displayMedium);
  }
}
