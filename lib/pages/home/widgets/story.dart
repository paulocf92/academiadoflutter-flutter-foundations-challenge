// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum StoryState { off, updated, live }

class StoryData {
  final StoryState state;
  final String name;
  final String imageUrl;

  StoryData({
    required this.name,
    required this.imageUrl,
    this.state = StoryState.off,
  });
}

class Story extends StatelessWidget {
  final StoryData data;

  const Story({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    var decoration = BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(45),
      border: Border.all(color: Colors.white.withOpacity(0.8), width: 1.5),
    );
    if (data.state != StoryState.off) {
      decoration = data.state == StoryState.live
          ? BoxDecoration(
              color: Colors.black,
              gradient: const LinearGradient(
                colors: [
                  Color(0XFFD301C5),
                  Color(0XFFD301C5),
                  Color(0XFFF51E50),
                ],
                begin: Alignment.centerLeft,
              ),
              borderRadius: BorderRadius.circular(45),
            )
          : BoxDecoration(
              color: Colors.black,
              gradient: const LinearGradient(
                colors: [
                  Color(0XFFFBCA02),
                  Color(0XFFF51E50),
                  Color(0XFFD301C5)
                ],
                begin: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(45),
            );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 6),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: decoration,
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage(
                      data.imageUrl,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: data.state == StoryState.live,
                child: SizedBox(
                  width: 56,
                  height: 56,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Color(0XFFB70174),
                      ),
                      child: const DefaultTextStyle(
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                        child: Text('LIVE'),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          DefaultTextStyle(
            style: const TextStyle(
              fontFamily: 'Arial',
              fontSize: 14,
              color: Colors.white,
            ),
            child: Text(
              data.name,
            ),
          ),
        ],
      ),
    );
  }
}
