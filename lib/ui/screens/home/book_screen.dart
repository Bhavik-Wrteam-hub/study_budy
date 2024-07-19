import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/data/map/book_map.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          toolbarHeight: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //app bar
              _appbar(),
              SizedBox(
                height: height * 0.02,
              ),
              // user text
              _usertext(height),
              SizedBox(
                height: height * 0.02,
              ),
              //tabbar
              Container(
                height: height * 0.06,
                width: width * 0.9,
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
                      text: "Today",
                    ),
                    Tab(
                      text: "Weekly",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              //Tabbar view
              Flexible(
                child: SizedBox(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      TodayScreen(),
                      WeeklyScreen(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Column _usertext(double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Hi, Kara 👋🏻"),
        SizedBox(
          height: height * 0.01,
        ),
        const Text(
          "Your have 7 days to go ",
          style: TextStyle(color: Color(0xff9B9BA1)),
        ),
      ],
    );
  }

  Row _appbar() {
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

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // calender
          Row(
            children: [
              SizedBox(
                height: height * 0.07 + 12,
                width: width * 0.8 + 32,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: bookcalender.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      height: height * 0.06,
                      width: width * 0.1 + 10,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(1, 2),
                              color: Colors.grey,
                            )
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          color: Theme.of(context).colorScheme.secondary),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child:
                                  Text(bookcalender[index]["id"].toString())),
                          Text(
                            bookcalender[index]["day"].toString(),
                            style: const TextStyle(
                                color: Color(0xffCDCDD0), fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width * 0.02,
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          //math
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Stack(
                        alignment: Alignment.center,
                        children: [
                          CircularProgressIndicator.adaptive(
                            value: 0.4,
                            backgroundColor: Color(0xffEAECF0),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xffAFB4FF)),
                          ),
                          Center(
                            child: Text(
                              "25%",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your daily goals almost done! 🔥",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          Text(
                            "1 of 4 completed",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 10,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),

          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Challenges"),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          //challenge container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(1, 2),
                    color: Colors.grey,
                  )
                ],
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          width: MediaQuery.of(context).size.width * 0.09,
                          "assets/png/Clock.png",
                        ),
                        SizedBox(
                          width: width * 0.7 + 5,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Math",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "5 days 13 hours left",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  )
                                ],
                              ),
                              Text(
                                " Mock Exam",
                                style: TextStyle(
                                    color: Color(0xff9B9BA1), fontSize: 12),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        value: 0.5,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          //Tpics text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Tpics"),
              Text(
                "View All",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
          // Tpics container

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView.separated(
              physics:
                  const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              padding: EdgeInsets.zero,
              itemCount: tpicCard.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(1, 2),
                          color: Colors.grey,
                        )
                      ],
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircularProgressIndicator.adaptive(
                              value: double.parse(
                                tpicCard[index]["progress"].toString(),
                              ),
                              backgroundColor: const Color(0xffEAECF0),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.amber),
                            ),
                            Center(
                              child: Text(
                                tpicCard[index]["percentage"].toString(),
                                style: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tpicCard[index]["title"].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    tpicCard[index]["subtitle"].toString(),
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 9,
                                    ),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/uploadnote");
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.09,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: tpicCard[index]["icon"].toString() ==
                                          "false"
                                      ? const Icon(Icons.add)
                                      : const Icon(
                                          Icons.check,
                                          color: Colors.green,
                                        ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

class WeeklyScreen extends StatelessWidget {
  const WeeklyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("This is the Weekly"),
    );
  }
}
