import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'post.dart';

var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

void httpGet() async {
  var response = await http.get(url);
  print(response.body);
}

//simple model mapping
Future<List<Post>> decodeJson() async {
  var posts = <Post>[];

  await http.get(url).then((response) {
    var raw = response.body;
    var jsonData = jsonDecode(raw);
    jsonData.forEach((data) {
      var post = Post(
          userId: data['userId'],
          id: data['id'],
          title: data['title'],
          body: data['body']);

      posts.add(post);
    });
  }).catchError((err) {
    print(err);
  });

  return posts;
}

//model mapping using factory method
Future<List<Post>> decodeFactory() async {
  List<Post> posts = <Post>[];

  await http.get(url).then((response) {
    var raw = response.body;
    var jsonData = jsonDecode(raw) as List;
    posts = jsonData.map((e) => Post.from(e)).toList();
  }).catchError((err) {
    print(err);
  });

  return posts;
}

void main() {
  //httpGet();

  decodeFactory().then((value) {
    for (var element in value) {
      print(element.title);
    }
  });
}
