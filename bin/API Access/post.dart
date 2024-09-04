class Post {
  int? userId;
  int? id;
  String? title;
  String? body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.from(dynamic raw) {
    return Post(
        userId: raw['userId'],
        id: raw['id'],
        title: raw['title'],
        body: raw['body']);
  }
}
