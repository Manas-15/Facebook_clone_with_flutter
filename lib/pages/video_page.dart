import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../models/video_model.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Videos",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                    child: Tooltip(
                        message: "Play Videos automatically",
                        child: Switch(
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            value: isSwitched))),
              ],
            )
          ]),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black38,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: videoData.length,
                itemBuilder: (context, i) => Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                iconSize: 50,
                                onPressed: videoData[i].avatarOnPressed,
                                icon: CircleAvatar(
                                  radius: 80.0,
                                  backgroundImage:
                                      AssetImage(videoData[i].avatarImage),
                                )),
                            Expanded(
                                child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      videoData[i].name,
                                      style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextButton(
                                        onPressed: () => {},
                                        child: const Text(
                                          'Follow',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.blueAccent,
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ],
                                )
                              ],
                            )),
                            IconButton(
                                onPressed: videoData[i].moreOnPressed,
                                iconSize: 30,
                                icon: const Icon(Icons.more_horiz_outlined))
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              YoutubePlayerControllerProvider(
                                controller: YoutubePlayerController.fromVideoId(
                                    videoId: videoData[i].videoPostLink ?? "",
                                    params: const YoutubePlayerParams(
                                      mute: false,
                                      showControls: true,
                                      showFullscreenButton: true,
                                    )),
                                child: Builder(
                                  builder: (context) => Column(),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )))
      ],
    );
  }
}
