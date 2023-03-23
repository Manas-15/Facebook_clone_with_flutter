import 'package:flutter/material.dart';
import 'package:project/models/story_model.dart';

class Storybar extends StatelessWidget {
  const Storybar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              height: 255,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => print('Add story Detected'),
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 150,
                          margin: const EdgeInsets.only(bottom: 30.0),
                          child: const ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image(
                                  image: AssetImage('images/19722.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        TextButton(
                          onPressed: () => {},
                          child: const Text(
                            'Add to story',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 50.0,
                      left: 45.0,
                      child: IconButton(
                        onPressed: () => print('Story printed'),
                        icon: Icon(Icons.add_circle_rounded),
                        iconSize: 45.0,
                        color: Colors.blueAccent,
                      ))
                ],
              ),
            ),
            for (var i = 0; i < storyData.length; i++) ...[
              Container(
                height: 250,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: storyData[i].onTap,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              image: AssetImage(storyData[i].image),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                        bottom: 10.0,
                        left: 10.0,
                        child: Text(
                          storyData[i].userName,
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ))
                  ],
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
