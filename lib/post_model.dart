class Post {
  int userId;
  int id;
  String title;
  String content;
  String picture;

  Post({this.userId, this.id, this.title, this.content});

  Post.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    content = json['content'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['content'] = this.content;
    data['picture'] = this.picture;
    return data;
  }
}
