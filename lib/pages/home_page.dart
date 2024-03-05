import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insta-Like'),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.8),
        foregroundColor: Colors.white,
      ),
      body: Container(),
    );
  }
}
