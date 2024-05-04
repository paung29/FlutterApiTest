class Post {
  int userId, id;
  String title, body;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Post.from(dynamic data) {
    return Post(
        userId: data['userId'],
        id: data['id'],
        title: data['title'],
        body: data['body']);
  }
}

  // {
  //   "userId": 1,
  //   "id": 1,
  //   "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  //   "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  // },