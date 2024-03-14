import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';

import 'package:spor/screens/vp.dart';

class BicepsPagee extends StatefulWidget {
  const BicepsPagee({super.key});

  @override
  State<BicepsPagee> createState() => _BicepsPageState();
}

class _BicepsPageState extends State<BicepsPagee> {
  int _selectedIndex = 0; // Set the default index

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Leverage machine preacher curl plate loaded',
        videoUrl: 'assets/videos/Leverage_machinepreachercurlplateloaded.mp4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'Dumbbell peacher hammer curl',
        videoUrl: 'assets/videos/Dumbbell_peacherhammercurl.mp4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'Dumbbell zottman curl on biceps',
        videoUrl: 'assets/videos/Dumbbell_zottmancurlonbiceps.mp4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'Dumbbell standing inner biceps',
        videoUrl: 'assets/videos/Dumbbell_standinginnerbiceps.MP4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'Collapsing on the floor of the trunk',
        videoUrl: 'assets/videos/Collapsing_onthefloorofthetrunk.mp4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'EZ-Bar Seated Close Grip Concentration Curl',
        videoUrl: 'assets/videos/EZ-BarSeatedCloseGripConcentrationCurl.mp4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'Ez-barbell reverse grip curl',
        videoUrl: 'assets/videos/Ez-barbellreversegripcurl.mp4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'Barbell standing concentration curl',
        videoUrl: 'assets/videos/Barbell_standingconcentrationcurl.mp4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'EZ-barbell standing preacher on bench',
        videoUrl: 'assets/videos/EZ-barbellstandingpreacheronbench.mp4',
        imageP: "assets/images/Bay.png"),
    ExerciseVideo(
        title: 'Barbell Standing Wide-Grip Biceps Curl',
        videoUrl: 'assets/videos/BarbellStandingWide-GripBicepsCurl.mp4',
        imageP: "assets/images/Bay.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Biceps", style: TextStyle(color: Colors.white)),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton.icon(
                      label: Text(
                        "Male",
                        style: TextStyle(color: Colors.black),
                      ),
                      icon: Icon(
                        Icons.male,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.grey.shade100),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton.icon(
                        label: Text(
                          "Female",
                          style: TextStyle(color: Colors.black),
                        ),
                        icon: Icon(Icons.female),
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.grey.shade100),
                        )),
                  ),
                ),
              ],
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
