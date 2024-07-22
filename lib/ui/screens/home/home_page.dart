import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/data/map/achievement_map.dart';
import 'package:study_budy/ui/screens/home/book_screen.dart';
import 'package:study_budy/ui/screens/home/home_screen.dart';
import 'package:study_budy/ui/screens/home/menu_screen/Statistics_screen.dart';
import 'package:study_budy/ui/screens/home/study_planer/timing_screen.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          Center(child: HomeScreen()),
          Center(
            child: BookScreen(),
          ),
          Center(child: TimingScreen()),
          Center(child: StatisticsScreen()),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: const CircleBorder(),
        onPressed: () {
          showDialog(
            barrierDismissible: true,
            context: context,
            builder: (context) {
              return Stack(
                children: [
                  AlertDialog(
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5 + 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hello Kara!",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "GOOD JOB!",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Learned today"),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "46",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        const TextSpan(
                                          text: " min",
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Learned today"),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01,
                                  ),
                                  RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: "408",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: " hrs",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Totally days"),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              const Text(
                                "30 days",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Column(
                            children: [
                              const Center(
                                child: Text(
                                  "Record of this week",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: popuprecord.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.09,
                                      width: MediaQuery.of(context).size.width *
                                          0.09,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffEEEFEF),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(popuprecord[index]["title"]
                                            .toString()),
                                      ),
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: CustomPrimaryButton(
                                  blur: false,
                                  name: "Share",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.secondary),
                        child: const Icon(Icons.close),
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
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
                      pageController.jumpToPage(0);
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
                      pageController.jumpToPage(1);
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
                      pageController.jumpToPage(2);
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
                      pageController.jumpToPage(3);
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
