import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 1.0, 'label': 'Elevation 1'},
  {'elevation': 2.0, 'label': 'Elevation 2'},
  {'elevation': 3.0, 'label': 'Elevation 3'},
  {'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  static const name = "cards_screen";
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: CardsView(),
    );
  }
}

class CardsView extends StatelessWidget {
  const CardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) => CardType1(
              label: card['label'],
              elevation: card['elevation'],
            ),
          ),
        ],
      ),
    );
  }
}

class CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const CardType1({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.more_vert_outlined),
                onPressed: () {},
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}
