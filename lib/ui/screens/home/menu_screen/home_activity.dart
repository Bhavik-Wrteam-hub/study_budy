import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/data/map/achievement_map.dart';
import 'package:study_budy/data/map/book_map.dart';
import 'package:study_budy/data/map/home_map.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity>
    with TickerProviderStateMixin {
  late TabController tabController;
  String? title;
  int currentindex = 0;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {
        currentindex = tabController.index;
        print("this is the init index$currentindex");
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.white),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            //first row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi, Mert 👋🏻"),
                    Text(
                      "Let’s make habits together!",
                      style: TextStyle(color: Color(0XFF9B9BA1)),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: const BoxDecoration(
                      color: Color(0xffDDF2FC), shape: BoxShape.circle),
                  child: const Center(
                    child: Text("😇"),
                  ),
                )
              ],
            ),
            //second row
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    "assets/png/Base.png",
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
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
            ),
            //tab bar
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: Color(0xffEAECF0),
                borderRadius: BorderRadius.all(
                  Radius.circular(22),
                ),
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(20),
                ),
                labelStyle:
                    TextStyle(color: Theme.of(context).colorScheme.primary),
                unselectedLabelColor: const Color(0xff686873),
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "Overall",
                  ),
                  Tab(
                    text: "Weekly",
                  ),
                  Tab(
                    text: "Achievements",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //tab bar view
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: tabController,
                children: [
                  const Mockexam(),
                  Container(),
                  const ProfileAchievement()
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: const CircleBorder(),
        onPressed: () {},
        child: Center(
          child: Image.asset("assets/png/messages icon.png"),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        color: Theme.of(context).colorScheme.primary,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Image.asset("assets/png/home_bottom.png")),
                Text(
                  "Home",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/book");
                    },
                    child: Image.asset("assets/png/Articles_bottom.png")),
                Text(
                  "Books",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Image.asset("assets/png/Search_bottom.png")),
                Text(
                  "Study Planner",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Image.asset("assets/png/Menu_bottom.png")),
                Text(
                  "Menu",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Mockexam extends StatelessWidget {
  const Mockexam({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        //first container
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Mock Exams",
              ),
              Text(
                "View All",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ),
        SizedBox(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
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
        ),
        //second container
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Mock Exams",
              ),
              Text(
                "View All",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ),
        SizedBox(
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
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
        )
      ],
    );
  }
}

class ProfileAchievement extends StatelessWidget {
  const ProfileAchievement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("2 Achievements"),
          Container(
            margin: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              itemCount: achievement.length,
              itemBuilder: (context, index) {
                int color = int.parse(achievement[index]["color"]!);
                return Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          spreadRadius: 1,
                          blurRadius: 3)
                    ],
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.09,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(color)),
                        child: const Center(
                          child: Text("80%"),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: const Column(
                          children: [
                            Text("B+ in Maths!"),
                            Text(
                              "1 months ago",
                              style: TextStyle(color: Color(0xff9B9BA1)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
