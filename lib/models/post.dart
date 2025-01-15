class Post {
  final int id;
  final String profileImageUrl;
  final String comment;
  final String foodPictureUrl;
  final int timestamp;

  Post({
    required this.id,
    required this.profileImageUrl,
    required this.comment,
    required this.foodPictureUrl,
    required this.timestamp
  });
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      profileImageUrl: json['profileImageUrl'] as String,
      comment: json['comment'] as String,
      foodPictureUrl: json['foodPictureUrl'] as String,
      timestamp: json['timestamp'] as int,
    );
  }
}
