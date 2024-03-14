import 'package:flutter/material.dart';
import 'package:spor/Screen2/legs2.dart';

import 'package:spor/screens/abs.dart';
import 'package:spor/screens/vp.dart';

class LegsPages extends StatefulWidget {
  const LegsPages({super.key});

  @override
  State<LegsPages> createState() => _LegsPagesState();
}

class _LegsPagesState extends State<LegsPages> {
  //pages
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Barbell low bar squat',
        videoUrl: 'assets/videos/Barbell_lowbarsquat.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Dumbbell Lunge exercise',
        videoUrl: 'assets/videos/Dumbbell_Lungeexercise.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Lever Seated Hip Adduction',
        videoUrl: 'assets/videos/Lever_SeatedHipAdduction.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Sled Hack Squat. Hips exercise',
        videoUrl: 'assets/videos/Sled_HackSquatHipsexercise.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Dumbbell Romanian Deadlift. Hips exercise',
        videoUrl: 'assets/videos/Dumbbell_RomanianDeadliftHipsexercise.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Lever Seated Hip Abduction. Hips exercise',
        videoUrl: 'assets/videos/Lever_SeatedHipAbductionHipsexercise.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Dumbbell Single Leg Deadlift. Hips exercise',
        videoUrl: 'assets/videos/Dumbbell_SingleLegCalfRaiseWallSupport.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Barbell Seated Good morning exercise',
        videoUrl: 'assets/videos/Barbell_SeatedGoodmorningexercise.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Barbell Hack Squat. Hips exercise',
        videoUrl: 'assets/videos/Barbell_HackSquatHipsexercise.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Cable Hip Adduction. Thighs exercise',
        videoUrl: 'assets/videos/Cable_HipAdductionThighsexercise.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Cable pull through. Hips exercise',
        videoUrl: 'assets/videos/Cable_pullthroughHipsexercise.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Cable machine deadlift on quadriceps',
        videoUrl: 'assets/videos/Cable_machinedeadliftonquadriceps.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Sled 45 narrow stance leg press',
        videoUrl: 'assets/videos/Sled_45narrowstancelegpress.mp4',
        imageP: "assets/images/legs.png"),
    ExerciseVideo(
        title: 'Smith machine hip thrust.',
        videoUrl: 'assets/videos/Smith_machinehipthrust.mp4',
        imageP: "assets/images/legs.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Legs", style: TextStyle(color: Colors.white)),
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
