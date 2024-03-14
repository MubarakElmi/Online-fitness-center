import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';

import 'package:spor/screens/vp.dart';

class ForearmsPagee extends StatefulWidget {
  const ForearmsPagee({super.key});

  @override
  State<ForearmsPagee> createState() => _ForearmsPageState();
}

class _ForearmsPageState extends State<ForearmsPagee> {
  int _selectedIndex = 0; // Set the default index

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Cable Wrist Curl',
        videoUrl: 'assets/videos/Cable_WristCurl.mp4',
        imageP: "assets/images/Forearms.png"),
    ExerciseVideo(
        title: 'Dumbbell Standing Wrist Curl',
        videoUrl: 'assets/videos/Dumbbell_StandingWristCurl.mp4',
        imageP: "assets/images/Forearms.png"),
    ExerciseVideo(
        title: 'Wrist extension barbell fitness',
        videoUrl: 'assets/videos/Wrist_extensionbarbellfitness.mp4',
        imageP: "assets/images/Forearms.png"),
    ExerciseVideo(
        title: 'barbell wrist curl wide legs',
        videoUrl: 'assets/videos/barbell_wristcurlwidelegs.mp4',
        imageP: "assets/images/Forearms.png"),
    ExerciseVideo(
        title: 'Dumbbell Reverse Wrist Curl',
        videoUrl: 'assets/videos/Dumbbell_ReverseWristCurl.mp4',
        imageP: "assets/images/Forearms.png"),
    ExerciseVideo(
        title: 'Dumbbell One Arm Seated Neutral Wrist Curl',
        videoUrl: 'assets/videos/Dumbbell_OneArmSeatedNeutralWristCurl.mp4',
        imageP: "assets/images/Forearms.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Forearms", style: TextStyle(color: Colors.white)),
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
