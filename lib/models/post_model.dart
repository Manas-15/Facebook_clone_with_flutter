import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  final String postImage;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  PostModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.postTitle,
    required this.postImage,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<PostModel> postData = [
  PostModel(
      avatarOnPressed: () => print('avatar on pressed'),
      avatarImage: 'images/19722.jpg',
      name: "Manas",
      time: "15 Min ago",
      moreOnPressed: () => print('More on pressed'),
      postTitle: "This is a post title",
      postImage: 'images/335860.jpg',
      likeOnPressed: () => print('like on Pressed'),
      commentOnPressed: () => print('comment on pressed'),
      shareOnPressed: () => print('share on pressed')),
  PostModel(
      avatarOnPressed: () => print('avatar on pressed'),
      avatarImage: 'images/335947.jpg',
      name: "Santosh",
      time: "1 Hr ago",
      moreOnPressed: () => print('More on pressed'),
      postTitle: "This is a post title",
      postImage: 'images/335947.jpg',
      likeOnPressed: () => print('like on Pressed'),
      commentOnPressed: () => print('comment on pressed'),
      shareOnPressed: () => print('share on pressed')),
];
