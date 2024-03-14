import 'package:flutter/material.dart';
import 'package:spor/Screen2/abs2.dart';
import 'package:spor/screens/vp.dart';

class ExerciseVideo {
  final String title;
  final String videoUrl;
  final String imageP;

  ExerciseVideo(
      {required this.title, required this.videoUrl, required this.imageP});
}

class AbsPage extends StatelessWidget {
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'CRUNCH FLOOR',
        videoUrl: 'assets/videos/CRUNCH_FLOOR.mp4',
        imageP: "assets/images/Abs.png"),
    ExerciseVideo(
        title: 'SITTING CRUNCH',
        videoUrl: 'assets/videos/SITTING_CRUNCH.mp4',
        imageP: "assets/images/Abs.png"),
    ExerciseVideo(
        title: 'SEATED TWISIT',
        videoUrl: 'assets/videos/SEATED_TWISIT.mp4',
        imageP: "assets/images/Abs.png"),
    ExerciseVideo(
        title: 'LYING LEG HIPRAISE',
        videoUrl: 'assets/videos/LYING_LEGHIPRAISE.mp4',
        imageP: "assets/images/Abs.png"),
    ExerciseVideo(
        title: 'SPELL CASTER',
        videoUrl: 'assets/videos/SPELL_CASTER.mp4',
        imageP: "assets/images/Abs.png"),
    ExerciseVideo(
        title: 'SIDE BENDS',
        videoUrl: 'assets/videos/SIDE_BENDS.mp4',
        imageP: "assets/images/Abs.png"),
    ExerciseVideo(
        title: 'Knee Tuck',
        videoUrl: 'assets/videos/Knee_Tuck.mp4',
        imageP: "assets/images/Abs.png"),
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
