import 'package:flutter/material.dart';
import 'package:flutter_academiadoflutter_foundations_challenge/pages/feed_card.dart';
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
            padding:
                const EdgeInsets.only(top: 0, right: 5, bottom: 5, left: 5),
            child: Row(
              children: [
                Story(
                  data: StoryData(
                    name: 'Your story',
                    imageUrl: 'assets/images/me.jpeg',
                    state: StoryState.updated,
                  ),
                ),
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
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                FeedCard(
                  owner: Owner(
                    name: 'im.user',
                    avatarUrl: 'assets/images/user2.jpeg',
                  ),
                  likes: 12030,
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget vehicula massa. Suspendisse scelerisque euismod velit ut imperdiet. Ut consectetur finibus leo, at porttitor nisi consequat nec. Etiam non justo ut orci faucibus luctus sed eleifend diam. Nam diam tellus, lobortis et nisl at, eleifend egestas leo. Fusce id mauris viverra, pulvinar ligula maximus, accumsan elit. Aenean pretium dui et posuere ullamcorper.',
                  imgUrl: 'assets/images/sample_image.jpg',
                  comments: [
                    Comment(user: 'some.user1', text: 'Some comment'),
                    Comment(
                        user: 'some.user2', text: 'Some another long comment'),
                    Comment(user: 'some.user3', text: 'Some comment'),
                  ],
                ),
                FeedCard(
                  owner: Owner(
                    name: 'im.user.sun',
                    avatarUrl: 'assets/images/user3.jpeg',
                  ),
                  likes: 0,
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget vehicula massa. Suspendisse scelerisque euismod velit ut imperdiet. Ut consectetur finibus leo, at porttitor nisi consequat nec. Etiam non justo ut orci faucibus luctus sed eleifend diam. Nam diam tellus, lobortis et nisl at, eleifend egestas leo. Fusce id mauris viverra, pulvinar ligula maximus, accumsan elit. Aenean pretium dui et posuere ullamcorper.',
                  imgUrl: 'assets/images/sample_image.jpg',
                  comments: [Comment(user: 'some.user1', text: 'Some comment')],
                ),
                FeedCard(
                  owner: Owner(
                    name: 'im.user.moon',
                    avatarUrl: 'assets/images/user4.jpeg',
                  ),
                  likes: 58075,
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eget vehicula massa. Suspendisse scelerisque euismod velit ut imperdiet. Ut consectetur finibus leo, at porttitor nisi consequat nec. Etiam non justo ut orci faucibus luctus sed eleifend diam. Nam diam tellus, lobortis et nisl at, eleifend egestas leo. Fusce id mauris viverra, pulvinar ligula maximus, accumsan elit. Aenean pretium dui et posuere ullamcorper.',
                  imgUrl: 'assets/images/sample_image.jpeg',
                  comments: const [],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: 30,
            color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/home.png',
                  width: 24,
                  height: 24,
                ),
                Image.asset(
                  'assets/images/search.png',
                  width: 24,
                  height: 24,
                ),
                Image.asset(
                  'assets/images/reels.png',
                  width: 24,
                  height: 24,
                ),
                Image.asset(
                  'assets/images/explore.png',
                  width: 24,
                  height: 24,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/me.jpeg'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
