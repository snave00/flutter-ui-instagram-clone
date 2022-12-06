class FeedModel {
  final String username;
  final String avatarUrl;
  final String imageUrl;
  final String caption;
  final String likes;
  final String comments;

  FeedModel({
    required this.username,
    required this.avatarUrl,
    required this.imageUrl,
    required this.caption,
    required this.likes,
    required this.comments,
  });
}
