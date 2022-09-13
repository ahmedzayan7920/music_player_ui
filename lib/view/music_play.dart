import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/model/song_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MusicPlay extends StatefulWidget {
  const MusicPlay({Key? key, required this.song}) : super(key: key);
  final Song song;

  @override
  State<MusicPlay> createState() => _MusicPlayState();
}

class _MusicPlayState extends State<MusicPlay> {
  @override
  Widget build(BuildContext context) {
    List<double> heights =
        List<double>.generate(66, (_) => Random().nextDouble() * 50);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2, .5, .8],
              colors: [
                Color(0xff100919),
                Color(0xef140B1F),
                Color(0xff100919),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Text(
                    widget.song.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19.px,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.only(bottom: 2),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          margin: const EdgeInsets.only(bottom: 2),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20.px),
              ClipRRect(
                borderRadius: BorderRadius.circular(30.px),
                child: Image.asset(
                  widget.song.image,
                  width: 330.px,
                  height: 330.px,
                ),
              ),
              SizedBox(height: 20.px),
              ListTile(
                title: Text(
                  widget.song.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.px,
                  ),
                ),
                subtitle: Text(
                  widget.song.subTitle,
                  style: TextStyle(
                    color: const Color(0x66FFFFFF),
                    fontSize: 18.px,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(widget.song.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border_outlined),
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.px),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...heights.map(
                    (e) {
                      return Container(
                        width: 3,
                        height: e <= 5 ? e + 5 : e,
                        margin: EdgeInsets.only(right: 2.px),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3.px),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 10.px),
              Row(
                children: const [
                  Text(
                    "1:04",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "3:29",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shuffle),
                    color: const Color(0xffBAA8ED),
                    iconSize: 30.px,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.skip_previous_outlined),
                    color: const Color(0xffBAA8ED),
                    iconSize: 30.px,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 70.px,
                      height: 70.px,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff7150D0),
                            Color(0xffAE92FF),
                          ],
                        ),
                      ),
                      child: const Icon(
                        Icons.pause,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.skip_next_outlined),
                    color: const Color(0xffBAA8ED),
                    iconSize: 30.px,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.replay_outlined),
                    color: const Color(0xffBAA8ED),
                    iconSize: 30.px,
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
