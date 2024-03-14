import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';

import 'package:spor/screens/vp.dart';

class CalfPage extends StatefulWidget {
  const CalfPage({super.key});

  @override
  State<CalfPage> createState() => _CalfPageState();
}

class _CalfPageState extends State<CalfPage> {
  //pages
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Barbell standing calf raise',
        videoUrl: 'assets/videos/Barbell_standingcalfraise.mp4',
        imageP: "assets/images/Calf.png"),
    ExerciseVideo(
        title: 'Leverage machine seated calf raise plate loaded',
        videoUrl:
            'assets/videos/Leverage_machineseatedcalfraiseplateloaded.mp4',
        imageP: "assets/images/Calf.png"),
    ExerciseVideo(
        title: 'Dumbbell Seated One Leg Calf Raise Hammer Grip',
        videoUrl: 'assets/videos/Dumbbell_SeatedOneLegCalfRaiseHammerGrip.mp4',
        imageP: "assets/images/Calf.png"),
    ExerciseVideo(
        title: 'Dumbbell Single Leg Calf Raise Wall Support',
        videoUrl: 'assets/videos/Dumbbell_SingleLegCalfRaiseWallSupport.mp4',
        imageP: "assets/images/Calf.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Calf", style: TextStyle(color: Colors.white)),
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
