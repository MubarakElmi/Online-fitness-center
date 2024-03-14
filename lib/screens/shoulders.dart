import 'package:flutter/material.dart';

import 'package:spor/screens/abs.dart';

import 'package:spor/screens/vp.dart';

class ShouldersPage extends StatefulWidget {
  const ShouldersPage({super.key});

  @override
  State<ShouldersPage> createState() => _ShouldersPageState();
}

class _ShouldersPageState extends State<ShouldersPage> {
  int _selectedIndex = 0; // Set the default index

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<ExerciseVideo> videoList = [
    ExerciseVideo(
        title: 'Dumbbell shoulder arnold press',
        videoUrl: 'assets/videos/Dumbbell_shoulderarnoldpress.mp4',
        imageP: "assets/images/Sholuder.png"),
    ExerciseVideo(
        title: 'Dumbbell Incline Front Raise exercise',
        videoUrl: 'assets/videos/Dumbbell_InclineFrontRaiseexercise.mp4',
        imageP: "assets/images/Sholuder.png"),
    ExerciseVideo(
        title: 'Dumbbell Seated Bent Arm Lateral raise exercise',
        videoUrl:
            'assets/videos/Dumbbell_SeatedBentArmLateralraiseexercise.mp4',
        imageP: "assets/images/Sholuder.png"),
    ExerciseVideo(
        title: 'Dumbbell cuban press exercise',
        videoUrl: 'assets/videos/Dumbbell_cubanpressexercise.mp4',
        imageP: "assets/images/Sholuder.png"),
    ExerciseVideo(
        title: 'Cable machine shoulder press',
        videoUrl: 'assets/videos/Cable_machineshoulderpress.mp4',
        imageP: "assets/images/Sholuder.png"),
    ExerciseVideo(
        title: 'Cable Seated Rear Lateral Raise exercise',
        videoUrl: 'assets/videos/Cable_SeatedRearLateralRaiseexercise.mp4',
        imageP: "assets/images/Sholuder.png"),
    ExerciseVideo(
        title: 'Barbell Upright Row. Shoulder exercise',
        videoUrl: 'assets/videos/Barbell_UprightRowShoulderexercise.mp4',
        imageP: "assets/images/Sholuder.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          title: const Text("Shoulders", style: TextStyle(color: Colors.white)),
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
