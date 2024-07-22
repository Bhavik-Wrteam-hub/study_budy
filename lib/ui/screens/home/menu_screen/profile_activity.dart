import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/data/map/achievement_map.dart';
import 'package:study_budy/data/map/subject_map.dart';

class ProfileActivity extends StatefulWidget {
  const ProfileActivity({super.key});

  @override
  State<ProfileActivity> createState() => _ProfileActivityState();
}

class _ProfileActivityState extends State<ProfileActivity>
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SafeArea(
            child: Column(
              children: [
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
                //Tabbar view
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        const LastMonthActivity(),
                        Container(),
                        const ProfileAchievement()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
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
                  height: MediaQuery.of(context).size.height * 0.08,
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

class LastMonthActivity extends StatelessWidget {
  const LastMonthActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //first row
        Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Showing last month activity"),
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.width * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          spreadRadius: 1)
                    ]),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/homeactivity");
                    },
                    child: Image.asset("assets/png/Filter.png")),
              )
            ],
          ),
        ),
        //list of the month activity
        Container(
          //color: Colors.amber,
          margin: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            itemCount: lastmonthactivity.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.09,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 2),
                        color: Colors.grey,
                        blurRadius: 3,
                        spreadRadius: 1,
                      )
                    ]),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(lastmonthactivity[index]["title"].toString()),
                          Text(
                            lastmonthactivity[index]["subtitle"].toString(),
                            style: const TextStyle(color: Color(0xff9B9BA1)),
                          )
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.09,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          border: Border.all(color: const Color(0xffEAECF0)),
                        ),
                        child: Image.asset(
                          lastmonthactivity[index]["image"] == "green"
                              ? "assets/png/Arrow_Up.png"
                              : lastmonthactivity[index]["image"] == "red"
                                  ? "assets/png/Arrow_Down.png"
                                  : "assets/png/Medal.png",
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              );
            },
          ),
        )
      ],
    );
  }
}
