import 'package:flutter/material.dart';
import 'package:flutter_academiadoflutter_foundations_challenge/pages/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
      ],
    );
  }
}
