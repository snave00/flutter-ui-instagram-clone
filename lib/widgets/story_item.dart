import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 15, right: 15),
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        physics: const BouncingScrollPhysics(),
        itemCount: stories_data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromRGBO(254, 218, 117, 100),
                    Color.fromRGBO(250, 126, 30, 100),
                    Color.fromRGBO(214, 41, 118, 100),
                    Color.fromRGBO(150, 47, 191, 100),
                    Color.fromRGBO(79, 91, 213, 100),
                  ]),
                  shape: BoxShape.circle),
              child: Padding(
                // border width
                padding: const EdgeInsets.all(3),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundImage: AssetImage(stories_data[index].avatarUrl),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(stories_data[index].username),
          ],
        ),
      ),
    );
  }
}
