import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 150,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/plus.png', width: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Image.asset('assets/images/heart.png', width: 28),
                ),
                Image.asset('assets/images/chat.png', width: 28),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
