import 'package:flutter/material.dart';
import 'package:instagram_clone/data/dummy_data.dart';
import 'package:instagram_clone/widgets/feed_item.dart';
import 'package:instagram_clone/widgets/story_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const StoryItem(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemCount: feed_data.length,
              itemBuilder: (context, index) => FeedItem(
                username: feed_data[index].username,
                avatarUrl: feed_data[index].avatarUrl,
                postImageUrl: feed_data[index].imageUrl,
                likes: feed_data[index].likes,
                comments: feed_data[index].comments,
                caption: feed_data[index].caption,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
