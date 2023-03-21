import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
    userName: "Priti",
    onTap: () => print("Priti clicked"),
    image: "images/335850.jpg",
  ),
  StoryModel(
    userName: "Santosh",
    onTap: () => print("Santosh clicked"),
    image: "images/54678.jpg",
  ),
  StoryModel(
    userName: "Sumon",
    onTap: () => print("Sumon clicked"),
    image: "images/88378.jpg",
  ),
  StoryModel(
    userName: "Siba",
    onTap: () => print("Siba clicked"),
    image: "images/269774.jpg",
  ),
];
