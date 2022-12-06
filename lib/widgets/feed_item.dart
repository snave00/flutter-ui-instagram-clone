import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({
    super.key,
    required this.username,
    required this.avatarUrl,
    required this.postImageUrl,
    required this.likes,
    required this.comments,
    required this.caption,
  });

  final String username;
  final String avatarUrl;
  final String postImageUrl;
  final String likes;
  final String comments;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(avatarUrl),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          postImageUrl,
          fit: BoxFit.cover,
          height: 350,
          width: double.infinity,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/heart.png',
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/images/chat.png',
                      width: 23,
                      height: 23,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/images/send.png',
                      width: 23,
                      height: 23,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/save_instagram.png',
                width: 25,
                height: 25,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          textAlign: TextAlign.start,
          '   $likes likes',
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              '   $username',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              caption,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
