import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';

import 'package:spor/screens/vp.dart';

class BackPagee extends StatefulWidget {
  const BackPagee({super.key});

  @override
  State<BackPagee> createState() => _BackPageState();
}

class _BackPageState extends State<BackPagee> {
  int _selectedIndex = 0; // Set the default index

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Pull up normal grip',
        videoUrl: 'assets/videos/pull_upnormalgrip.mp4',
        imageP: "assets/images/Back.png"),
    ExerciseVideo(
        title: 'Behind neck lat pull down',
        videoUrl: 'assets/videos/Behind_necklatpulldown.mp4',
        imageP: "assets/images/Back.png"),
    ExerciseVideo(
        title: 'Lever T-bar Row plate loaded',
        videoUrl: 'assets/videos/LeverT-barRowplateloaded.mp4',
        imageP: "assets/images/Back.png"),
    ExerciseVideo(
        title: 'Cable seated row with v-bar',
        videoUrl: 'assets/videos/Cable_seatedrowwithvbar.mp4',
        imageP: "assets/images/Back.png"),
    ExerciseVideo(
        title: 'Lever Alternating Narrow Grip Seated Row plate',
        videoUrl:
            'assets/videos/Lever_AlternatingNarrowGripSeatedRowplateloaded.mp4',
        imageP: "assets/images/Back.png"),
    ExerciseVideo(
        title: 'Leverage machine seated row plate loaded.',
        videoUrl:
            'assets/videos/Leverage_machineseatedcalfraiseplateloaded.mp4',
        imageP: "assets/images/Back.png"),
    ExerciseVideo(
        title: 'Dumbbell Reverse Fly',
        videoUrl: 'assets/videos/Dumbbell_ReverseFly.mp4',
        imageP: "assets/images/Back.png"),
    ExerciseVideo(
        title: 'Dumbbell Lying Rear Delt Row',
        videoUrl: 'assets/videos/Dumbbell_LyingRearDeltRow.mp4',
        imageP: "assets/images/Back.png"),
    ExerciseVideo(
        title: 'Dumbbell Bent-over Row',
        videoUrl: 'assets/videos/Dumbbell_BentoverRow.mp4',
        imageP: "assets/images/Back.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Back", style: TextStyle(color: Colors.white)),
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
