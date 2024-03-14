import 'package:flutter/material.dart';
import 'package:spor/screens/abs.dart';
import 'package:spor/screens/vp.dart';

class ExerciseVideo {
  final String title;
  final String videoUrl;
  final String imageP;

  ExerciseVideo(
      {required this.title, required this.videoUrl, required this.imageP});
}

class AbsPagee extends StatelessWidget {
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Leg_Raise Hip Lift Waist exercise',
        videoUrl: 'assets/videos/Leg_RaiseHipLiftWaistexercise.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Quarter sit up',
        videoUrl: 'assets/videos/Quarter_situpfemaleversion.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Alternate LegPull',
        videoUrl: 'assets/videos/Alternate_LegPullfitnessexerciseworkout.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Alternate Leg Raise from Reverse Plank',
        videoUrl: 'assets/videos/Alternate_LegRaisefromReversePlank.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Alternate_Leg Raise with Head ',
        videoUrl: 'assets/videos/Alternate_LegRaisewithHeadfitnessexercise.mp4',
        imageP: "assets/images/cardio.png"),
    ExerciseVideo(
        title: 'Side Plank',
        videoUrl: 'assets/videos/Side_plank.mp4',
        imageP: "assets/images/cardio.png"),

    /*ExerciseVideo(
        title: 'DECLİNE CRUNCH',
        videoUrl: 'assets/videos/DECLİNE.mp4',
        imageP: "assets/images/Abs.png"),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("ABS", style: TextStyle(color: Colors.white)),
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
