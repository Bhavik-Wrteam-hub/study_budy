import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/data/map/home_map.dart';
import 'package:study_budy/data/map/subject_map.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(body: Builder(builder: (context) {
      return SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // app bar
                appbar(),
                SizedBox(height: height * 0.02),
                //second row
                secondRow(height, width),
                SizedBox(height: height * 0.02),
                //subject Text
                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subjects"),
                      Text(
                        "View All",
                        style: TextStyle(color: Color(0xff3843FF)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                //Recent Topic
                subjectlist(height, width),

                SizedBox(height: height * 0.02),

                //Recent Topics
                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recent Topics"),
                      Text(
                        "View All",
                        style: TextStyle(color: Color(0xff3843FF)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                //Recent topic conatainer
                recent_topic(height, width),
                SizedBox(height: height * 0.02),

                // Mock Exams text
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Mock Exams"),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                //Mock Exams text countainer
                mock_exam(height, width),
                SizedBox(height: height * 0.02),

                //Your Journey text
                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Your Journey"),
                      Text(
                        "View All",
                        style: TextStyle(color: Color(0xff3843FF)),
                      ),
                    ],
                  ),
                ),
                yourJourney(height, width)
              ],
            ),
          ),
        ),
      );
    }));
  }

  SizedBox yourJourney(double height, double width) {
    return SizedBox(
      height: height * 0.1 + 41,
      width: width * 0.9,
      child: ListView.separated(
        itemCount: yourjourney.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: height * 0.1 + 41,
            width: width * 0.5,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: const Color(0xffEAECF0)),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: height * 0.10,
                    width: width * 0.5,
                    child: Image.asset(
                      yourjourney[index]["image"].toString(),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/png/Folder.png",
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        yourjourney[index]["title"].toString(),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: width * 0.04,
          );
        },
      ),
    );
  }

  SizedBox mock_exam(double height, double width) {
    return SizedBox(
      height: height * 0.1 + 41,
      width: width * 0.9,
      child: ListView.separated(
        itemCount: mockexam.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: height * 0.1 + 35,
            width: width * 0.5,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: const Color(0xffEAECF0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/png/Time Circle.png"),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    mockexam[index]["title"].toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  Text(
                    mockexam[index]["subtitle"].toString(),
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  LinearProgressIndicator(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Theme.of(context).colorScheme.secondary,
                    backgroundColor: const Color(0xffAFB4FF),
                    value: double.parse(mockexam[index]["value"]!),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: width * 0.04,
          );
        },
      ),
    );
  }

  SizedBox recent_topic(double height, double width) {
    return SizedBox(
      height: height * 0.1 + 24,
      width: width * 0.9,
      child: ListView.separated(
        itemCount: recenttopic.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          int color = int.parse(recenttopic[index]["color"]!);

          return Container(
            height: height * 0.1 + 24,
            width: width * 0.4 - 25,
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: const Color(0xffEAECF0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(recenttopic[index]["image"].toString()),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(recenttopic[index]["title"].toString())
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: width * 0.04,
          );
        },
      ),
    );
  }

  SizedBox subjectlist(double height, double width) {
    return SizedBox(
      height: height * 0.1 + 30,
      width: width * 0.9,
      child: ListView.separated(
        itemCount: subjecthome.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: height * 0.1 + 30,
            width: width * 0.4 - 25,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: const Color(0xffEAECF0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(subjecthome[index]["image"].toString()),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(subjecthome[index]["title"].toString())
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: width * 0.04,
          );
        },
      ),
    );
  }

  Row secondRow(double height, double width) {
    return Row(
      children: [
        Container(
          height: height * 0.07,
          width: width * 0.15,
          decoration: const BoxDecoration(),
          child: Image.asset(
            "assets/png/Base.png",
          ),
        ),
        SizedBox(
          width: width * 0.02,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Kara Jagne"),
            Image.asset(
              "assets/png/Status_Badge_home.png",
              fit: BoxFit.cover,
            ),
          ],
        )
      ],
    );
  }

  Row appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Image.asset("assets/png/Left_Icon_home.png"),
        ),
        Row(
          children: [
            Container(
              child: Image.asset("assets/png/Icon_home.png"),
            ),
            Container(
              child: Image.asset("assets/png/Right_Icon_home.png"),
            ),
          ],
        ),
      ],
    );
  }
}
