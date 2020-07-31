import 'dart:convert';
import 'post_model.dart';
import 'package:http/http.dart';

class HttpService {
  final String postUrl = "https://institutrajawali.com/api/v1/post";

  Future<List<Post>> getPosts() async {
    Response res = await get(postUrl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw "Post Tidak Ada";
    }
  }
}
