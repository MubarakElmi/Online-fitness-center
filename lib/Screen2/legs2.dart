import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';
import 'package:spor/screens/legs.dart';
import 'package:spor/screens/vp.dart';

class LegsPagess extends StatefulWidget {
  const LegsPagess({super.key});

  @override
  State<LegsPagess> createState() => _LegsPagesState();
}

class _LegsPagesState extends State<LegsPagess> {
  //pages
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Sumo squat on thighs',
        videoUrl: 'assets/videos/Sumo_squatonthighs.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Straight Leg Kick back',
        videoUrl: 'assets/videos/Straight_LegKickback.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Barbell split squat female',
        videoUrl: 'assets/videos/Barbell_splitsquatfemale.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Hip thrusts on bench female',
        videoUrl: 'assets/videos/Hip_thrustsonbenchfemale.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Dumbbell Romanian Deadlift',
        videoUrl: 'assets/videos/Dumbbell_RomanianDeadlift.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Barbell Single Leg Split Squat',
        videoUrl: 'assets/videos/Barbell_SingleLegSplitSquat.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Dumbbell sumo pull through',
        videoUrl: 'assets/videos/Dumbbell_sumopullthrough.mp4',
        imageP: "assets/images/legs.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Legs", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purple.shade200,
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
