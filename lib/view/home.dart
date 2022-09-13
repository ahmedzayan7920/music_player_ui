import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/data/song_data.dart';
import 'package:music_player/view/music_play.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
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
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.px)),
                    contentPadding: const EdgeInsets.all(20),
                    fillColor: const Color(0x0FFFFFFF),
                    filled: true,
                    hintText: "search song",
                    hintStyle: const TextStyle(color: Color(0x66FFFFFF)),
                    prefixIcon: IconButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                      },
                      icon: const Icon(Icons.search_outlined),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20.px),
                Expanded(
                  child: ListView(
                    children: [
                      Row(
                        children: [
                          Text(
                            "recently played".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.px,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {FocusScope.of(context).unfocus();},
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: const Color(0x80FFFFFF),
                                fontSize: 14.px,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.px),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              Get.to(() => MusicPlay(song: songs[2]));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    songs[2].image,
                                    width: 165.px,
                                    height: 165.px,
                                  ),
                                ),
                                SizedBox(height: 15.px),
                                Text(
                                  songs[2].title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.px,
                                  ),
                                ),
                                SizedBox(height: 10.px),
                                Text(
                                  songs[2].subTitle,
                                  style: TextStyle(
                                      color: const Color(0x66FFFFFF),
                                      fontSize: 13.px),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              Get.to(() => MusicPlay(song: songs[0]));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    songs[0].image,
                                    width: 165.px,
                                    height: 165.px,
                                  ),
                                ),
                                SizedBox(height: 15.px),
                                Text(
                                  songs[0].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.px),
                                ),
                                SizedBox(height: 10.px),
                                Text(
                                  songs[0].subTitle,
                                  style: TextStyle(
                                      color: const Color(0x66FFFFFF),
                                      fontSize: 13.px),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.px),
                      Row(
                        children: [
                          Text(
                            "recommendation".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.px,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {FocusScope.of(context).unfocus();},
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: const Color(0x80FFFFFF),
                                fontSize: 14.px,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.px),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: songs.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              Get.to(() => MusicPlay(song: songs[index]));
                            },
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  songs[index].image,
                                  width: 50.px,
                                  height: 50.px,
                                ),
                              ),
                              title: Text(
                                songs[index].title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.px),
                              ),
                              subtitle: Text(
                                songs[index].subTitle,
                                style: TextStyle(
                                    color: const Color(0x66FFFFFF),
                                    fontSize: 13.px),
                              ),
                              trailing: IconButton(
                                onPressed: () {FocusScope.of(context).unfocus();},
                                icon: Icon(songs[index].isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined),
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
