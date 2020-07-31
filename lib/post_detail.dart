import 'package:flutter/material.dart';
import './post_model.dart';
import 'package:html/parser.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  const PostDetail({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Judul"),
                  subtitle: Text(post.title),
                ),
                ListTile(
                  //gambar tidak muncul
                  title: Text("Berita"),
                  subtitle:
                      Text(parse(post.content.toString()).documentElement.text),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
