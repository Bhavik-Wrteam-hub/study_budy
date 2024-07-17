import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen>
    with SingleTickerProviderStateMixin {
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
        backgroundColor: Colors.transparent,
        leadingWidth: 110,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10, top: 15),
          child: Text(
            "Statistics",
            style: TextStyle(fontSize: 20),
          ),
        ),
        title: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(1, 2),
                color: Colors.grey,
              )
            ],
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.03 + 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/png/grommet-icons_language.png"),
              Text(
                'English',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 15,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              )
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Image.asset("assets/png/Right_Icon_flash.png"),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    const OverrAllScreen(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OverrAllScreen extends StatelessWidget {
  const OverrAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Text("This week"),
                  Text("May 28 - Jun 3"),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: const Color(0xffEAECF0)),
                    ),
                    child: const Icon(Icons.arrow_back_ios_outlined),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: const Color(0xffEAECF0)),
                    ),
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          //performanc screen
          Container(
            margin: const EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Theme.of(context).colorScheme.secondary,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(1, 2),
                  color: Colors.grey,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //first Row
                  Row(
                    children: [
                      const Text("👀"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.07 - 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "All Performance",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Summary",
                                  style: TextStyle(
                                      color: Color(0xff9B9BA1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffEAECF0)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: const Icon(Icons.arrow_drop_down_outlined),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  //second Row
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SUCCESS RATE",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9B9BA1),
                            ),
                          ),
                          Text(
                            "%60",
                            style: TextStyle(fontSize: 15, color: Colors.green),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "COMPLETED",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9B9BA1),
                            ),
                          ),
                          Text(
                            "50",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  //Third Row
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "POINTS EARNED",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9B9BA1),
                            ),
                          ),
                          Image.asset("assets/png/Status Badge.png")
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2 - 8,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BEST Topic",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9B9BA1),
                            ),
                          ),
                          Text(
                            "Sets",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  //forth Row
                  Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SKIPPED",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9B9BA1),
                            ),
                          ),
                          Text(
                            "4",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "FAILED",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9B9BA1),
                            ),
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // graph chart
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(1, 2),
                    color: Colors.grey,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: BarChart(
                swapAnimationDuration:
                    const Duration(milliseconds: 150), // Optional
                swapAnimationCurve: Curves.linear,
                BarChartData(),
              ))
        ],
      ),
    );
  }
}
