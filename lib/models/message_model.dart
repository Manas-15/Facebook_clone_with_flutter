import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avatar;
  final String status;

  MessageModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.status,
  });

  static Icon statusOnline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.green,
  );

  static Icon statusOffline = const Icon(
    Icons.phone_android_outlined,
    size: 18,
    color: Colors.black38,
  );
}

List<MessageModel> messageData = [
  MessageModel(
      name: "Rahul",
      time: "10:20",
      avatar: 'images/323553.jpg',
      status: 'Online'),
  MessageModel(
      name: "Ranjan",
      time: "10:20",
      avatar: 'images/323553.jpg',
      status: 'Offline'),
  MessageModel(
      name: "Ranjan",
      time: "10:20",
      avatar: 'images/323553.jpg',
      status: 'Offline'),
  MessageModel(
      name: "Ranjan",
      time: "10:20",
      avatar: 'images/323553.jpg',
      status: 'Offline'),
  MessageModel(
      name: "Ranjan",
      time: "10:20",
      avatar: 'images/323553.jpg',
      status: 'Offline'),
  MessageModel(
      name: "Ranjan",
      time: "10:20",
      avatar: 'images/323553.jpg',
      status: 'Offline'),
  MessageModel(
      name: "Ranjan",
      time: "10:20",
      avatar: 'images/323553.jpg',
      status: 'Offline'),
  MessageModel(
      name: "Ranjan",
      time: "10:20",
      avatar: 'images/323553.jpg',
      status: 'Offline'),
];
