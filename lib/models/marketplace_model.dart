import 'package:flutter/material.dart';

class MarketplaceModel {
  final String title;
  final String photo;
  final double price;

  MarketplaceModel(
      {required this.title, required this.photo, required this.price});
}

List<MarketplaceModel> marketplaceData = [
  MarketplaceModel(
      title: "Bike 2 months old ", photo: 'images/bike.jpg', price: 1972.50),
  MarketplaceModel(
      title: "Mobile 6 months old", photo: 'images/mob.jpg', price: 1972.50),
  MarketplaceModel(
      title: "Car 2 years old", photo: 'images/car.jpg', price: 1972.50),
  MarketplaceModel(
      title: "bike 14 years old", photo: 'images/bike2.jpg', price: 1972.50),
  MarketplaceModel(
      title: "Mobile 3 years old", photo: 'images/mob2.jpg', price: 1972.50),
  MarketplaceModel(
      title: "Bike 7 years old", photo: 'images/bike 3.jpeg', price: 1972.50),
];
