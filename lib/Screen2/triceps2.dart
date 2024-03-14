import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';

import 'package:spor/screens/vp.dart';

class TricepsPagee extends StatefulWidget {
  const TricepsPagee({super.key});

  @override
  State<TricepsPagee> createState() => _TricepsPageState();
}

class _TricepsPageState extends State<TricepsPagee> {
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
          title: 'Victory Squats',
          videoUrl: 'assets/videos/VictorySquats.mp4',
          imageP: "assets/images/cardio.png"),
      ExerciseVideo(
          title: 'Curtsy Lunges',
          videoUrl: 'assets/videos/CurtsyLunges.mp4',
          imageP: "assets/images/cardio.png"),
      ExerciseVideo(
          title: 'Front Jack',
          videoUrl: 'assets/videos/FrontJack.mp4',
          imageP: "assets/images/cardio.png"),
      ExerciseVideo(
          title: 'Lateral Walk',
          videoUrl: 'assets/videos/LateralWalk.mp4',
          imageP: "assets/images/cardio.png"),
      ExerciseVideo(
          title: 'Spider Plank',
          videoUrl: 'assets/videos/SpiderPlank.mp4',
          imageP: "assets/images/cardio.png"),
      ExerciseVideo(
          title: 'Mountanin Climber',
          videoUrl: 'assets/videos/MountaninClimber.mp4',
          imageP: "assets/images/cardio.png"),
      ExerciseVideo(
          title: 'Bear Jump',
          videoUrl: 'assets/videos/BearJump.mp4',
          imageP: "assets/images/cardio.png"),
      ExerciseVideo(
          title: 'Snow Angel',
          videoUrl: 'assets/videos/SnowAngel.mp4',
          imageP: "assets/images/cardio.png"),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Ful Body", style: TextStyle(color: Colors.white)),
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
