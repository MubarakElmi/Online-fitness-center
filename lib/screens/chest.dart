import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';

import 'package:spor/screens/vp.dart';

class ChestPage extends StatefulWidget {
  const ChestPage({super.key});

  @override
  State<ChestPage> createState() => _ChestPageState();
}

class _ChestPageState extends State<ChestPage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0; // Set the default index

    void navigateBottomBar(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    //pages
    final List<ExerciseVideo> videoList = [
      ExerciseVideo(
          title: 'Leverage machine chest press',
          videoUrl: 'assets/videos/Leverage_machinechestpress.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Dumbbell Up Bench Press exercise',
          videoUrl: 'assets/videos/Dumbbell_UpBenchPressexercise.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Dumbbell Bench Press exercise',
          videoUrl: 'assets/videos/Dumbbell_BenchPressexercise.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Cable Standing Up Straight Crossovers. Chest',
          videoUrl: 'assets/videos/Cable_StandingUpStraightCrossoversChest.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Cable horizontal Pallof Press. Waist exercise',
          videoUrl:
              'assets/videos/Cable_horizontalPallofPressWaistexercise.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Dumbbell straight arm pullover.',
          videoUrl: 'assets/videos/Dumbbell_straightarmpullover.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Press of a bar, lying on the bench',
          videoUrl: 'assets/videos/Press_ofabarlyingonthebench.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Cable_lyingflyAnatomyoffitnessandbodybuildingChest',
          videoUrl:
              'assets/videos/Cable_lyingflyAnatomyoffitnessandbodybuildingChest.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Lever Lying Chest Press plate loaded',
          videoUrl: 'assets/videos/Lever_LyingChestPressplateloaded.mp4',
          imageP: "assets/images/Chest.png"),
      ExerciseVideo(
          title: 'Barbell reverse close grip bench press',
          videoUrl: 'assets/videos/Barbell_reverseclosegripbenchpress.mp4',
          imageP: "assets/images/Chest.png"),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Chest", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: videoList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text(videoList[index].title),
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              offset: Offset(5, 5),
                              color: Colors.blueGrey,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          child: Image.asset(
                            videoList[index].imageP,
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerPage(
                                videoUrl: videoList[index].videoUrl),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
