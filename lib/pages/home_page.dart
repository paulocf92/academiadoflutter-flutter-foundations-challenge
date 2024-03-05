import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_academiadoflutter_foundations_challenge/pages/header.dart';
import 'package:flutter_academiadoflutter_foundations_challenge/pages/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Story(
                  data: StoryData(
                    name: 'zaralarsson',
                    imageUrl: 'assets/images/user1.jpeg',
                    state: StoryState.live,
                  ),
                ),
                Story(
                  data: StoryData(
                    name: 'tinashenow',
                    imageUrl: 'assets/images/user2.jpeg',
                    state: StoryState.updated,
                  ),
                ),
                Story(
                  data: StoryData(
                    name: 'jadenovah',
                    imageUrl: 'assets/images/user3.jpeg',
                    state: StoryState.updated,
                  ),
                ),
                Story(
                  data: StoryData(
                    name: 'iamjojo',
                    imageUrl: 'assets/images/user4.jpeg',
                    state: StoryState.updated,
                  ),
                ),
                Story(
                  data: StoryData(
                      name: 'taylorswift',
                      imageUrl: 'assets/images/user5.jpeg'),
                ),
                Story(
                  data: StoryData(
                      name: 'pokemon', imageUrl: 'assets/images/user6.jpeg'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
