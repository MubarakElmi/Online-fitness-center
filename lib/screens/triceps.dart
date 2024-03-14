import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';

import 'package:spor/screens/vp.dart';

class TricepsPage extends StatefulWidget {
  const TricepsPage({super.key});

  @override
  State<TricepsPage> createState() => _TricepsPageState();
}

class _TricepsPageState extends State<TricepsPage> {
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
          title: 'Dumbbell lying one arm pronated triceps',
          videoUrl: 'assets/videos/Dumbbell_lyingonearmpronatedtriceps.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'Dumbbell Lying Single Extension. Upper Arms',
          videoUrl: 'assets/videos/Dumbbell_LyingSingleExtensionUpperArms.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'EZ-Barbell Decline Triceps Extension',
          videoUrl: 'assets/videos/EZ-BarbellDeclineTricepsExtension.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'Cable Kneeling Triceps',
          videoUrl: 'assets/videos/Cable_KneelingTriceps.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'Cable Rope High Pulley Overhead ',
          videoUrl: 'assets/videos/Cable_RopeHighPulleyOverhead.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'Cable Kneeling Triceps Extension',
          videoUrl: 'assets/videos/Cable_KneelingTricepsExtension.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'Cable One Arm Side Triceps Pushdown',
          videoUrl: 'assets/videos/Cable_OneArmSideTricepsPushdown.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'Cable Seated Rear Lateral Raise',
          videoUrl: 'assets/videos/Cable_SeatedRearLateralRaise.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'Decline push-up on bench',
          videoUrl: 'assets/videos/Decline_pushuponbench.mp4',
          imageP: "assets/images/Triceps.png"),
      ExerciseVideo(
          title: 'Bench dip on floor exercise',
          videoUrl: 'assets/videos/Bench_diponfloorexercise.mp4',
          imageP: "assets/images/Triceps.png"),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Triceps", style: TextStyle(color: Colors.white)),
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
