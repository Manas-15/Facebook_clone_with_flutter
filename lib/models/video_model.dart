import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final String? videoPostLink;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  VideoModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.videoPostTitle,
    required this.videoPostLink,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<VideoModel> videoData = [
  VideoModel(
      avatarOnPressed: () => print('avatar on pressed'),
      avatarImage: 'images/19722.jpg',
      name: "Manas",
      time: "15 Min ago",
      moreOnPressed: () => print('More on pressed'),
      videoPostTitle: "Lorem ipsom lorem ipsum",
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=-dhN9zNzuCM"),
      likeOnPressed: () => print('like on Pressed'),
      commentOnPressed: () => print('comment on pressed'),
      shareOnPressed: () => print('share on pressed')),
  VideoModel(
      avatarOnPressed: () => print('avatar on pressed'),
      avatarImage: 'images/335947.jpg',
      name: "Santosh",
      time: "1 Hr ago",
      moreOnPressed: () => print('More on pressed'),
      videoPostTitle: "This is a post title",
      videoPostLink: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=pKE995D1Dnw"),
      likeOnPressed: () => print('like on Pressed'),
      commentOnPressed: () => print('comment on pressed'),
      shareOnPressed: () => print('share on pressed')),
];
