import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const name = "cards_screen";
  const CardsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
