import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Owner {
  final String name;
  final String avatarUrl;

  Owner({required this.name, required this.avatarUrl});
}

class Comment {
  final String user;
  final String text;

  Comment({required this.user, required this.text});
}

class FeedCard extends StatelessWidget {
  final Owner owner;
  final String imgUrl;
  final String description;
  final int likes;
  final List<Comment> comments;

  const FeedCard({
    super.key,
    required this.owner,
    required this.imgUrl,
    required this.comments,
    required this.description,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 32,
                      height: 32,
                      child: CircleAvatar(
                          backgroundImage: AssetImage(owner.avatarUrl)),
                    ),
                    const SizedBox(width: 10),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      child: Text(owner.name),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.more_horiz, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Image.asset(
              'assets/images/sample_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/heart.png',
                          width: 24,
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(
                            'assets/images/comment.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        Image.asset(
                          'assets/images/share.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/save.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Visibility(
                  visible: likes > 0,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: NumberFormat.decimalPattern('en_US')
                                  .format(likes),
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(
                              text: ' likes',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: owner.name,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: ' '),
                      TextSpan(
                        text: description.substring(0, 110),
                        style: const TextStyle(fontSize: 12),
                      ),
                      TextSpan(
                        text: '... more',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: comments.isNotEmpty,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade500,
                        ),
                        child: Text(
                            'See all ${NumberFormat.decimalPattern('en_US').format(comments.length)} comments'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
