import 'package:flutter/material.dart';
import 'package:spor/screens/vp.dart';

class ExerciseVideo {
  final String title;
  final String videoUrl;
  final String imageP;

  ExerciseVideo(
      {required this.title, required this.videoUrl, required this.imageP});
}

class CardioPage extends StatelessWidget {
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Jumping Jacks',
        videoUrl: 'assets/videos/JumpingJacks.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'HighKnees Running',
        videoUrl: 'assets/videos/HighKneesRunning.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Standing Bicycle Crunches',
        videoUrl: 'assets/videos/StandingBicycleCrunches.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Lateral Lunge',
        videoUrl: 'assets/videos/LateralLunge.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Trunk Circles',
        videoUrl: 'assets/videos/TrunkCircles.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Inchworms',
        videoUrl: 'assets/videos/Inchworms.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Sumo Squats',
        videoUrl: 'assets/videos/SumoSquats.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Wall Sit',
        videoUrl: 'assets/videos/WallSit.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Push Ups',
        videoUrl: 'assets/videos/PushUps.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Push Ups With Rotation',
        videoUrl: 'assets/videos/PushUpsWithRotation.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Plank',
        videoUrl: 'assets/videos/Plank.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Side Plank',
        videoUrl: 'assets/videos/SidePlank.mp4',
        imageP: "assets/images/cardio.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Cardio", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purple,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
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
