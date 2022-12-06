import 'package:instagram_clone/models/feed_model.dart';
import 'package:instagram_clone/models/story_model.dart';

final stories_data = [
  StoryModel(
    username: 'Your Story',
    avatarUrl: 'assets/images/my_avatar.jpg',
  ),
  StoryModel(
    username: 'haids',
    avatarUrl: 'assets/images/haids.jpg',
  ),
  StoryModel(
    username: 'hatdog',
    avatarUrl: 'assets/images/avatar2.jpg',
  ),
  StoryModel(
    username: 'inday',
    avatarUrl: 'assets/images/avatar3.jpg',
  ),
  StoryModel(
    username: 'balbas_02',
    avatarUrl: 'assets/images/avatar4.jpg',
  ),
  StoryModel(
    username: 'walako_maisip',
    avatarUrl: 'assets/images/avatar5.jpg',
  ),
];

final feed_data = [
  FeedModel(
    username: 'haids',
    avatarUrl: 'assets/images/haids.jpg',
    imageUrl: 'assets/images/post1.jpg',
    caption: 'Cats pusa at iba pa.',
    likes: '1,108',
    comments: '5',
  ),
  FeedModel(
    username: 'hatdog',
    avatarUrl: 'assets/images/avatar2.jpg',
    imageUrl: 'assets/images/post2.png',
    caption: 'Asong naka ngiti.',
    likes: '412',
    comments: '2',
  ),
  FeedModel(
    username: 'inday',
    avatarUrl: 'assets/images/avatar3.jpg',
    imageUrl: 'assets/images/post3.jpg',
    caption: 'Landscape',
    likes: '123',
    comments: '3',
  ),
  FeedModel(
    username: 'balbas_02',
    avatarUrl: 'assets/images/avatar4.jpg',
    imageUrl: 'assets/images/post4.jpg',
    caption: 'Chill',
    likes: '232',
    comments: '2',
  ),
  FeedModel(
    username: 'walako_maisip',
    avatarUrl: 'assets/images/avatar5.jpg',
    imageUrl: 'assets/images/post5.jpg',
    caption: 'At the beach.',
    likes: '987',
    comments: '10',
  ),
];
