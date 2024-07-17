// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:study_budy/data/map/book_map.dart';

class TimingScreen extends StatelessWidget {
  const TimingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.close),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Set up learning reminders",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              const Text(
                "Tell us when you want to learn and we will send push notification to remind you, You can change these anytime in the settings menu",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xff767372)),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              //first Row
              Row(
                children: [
                  SizedBox(
                    height: height * 0.07 + 25,
                    width: width * 0.8 + 32,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: timing.length,
                      itemBuilder: (context, index) {
                        int color = int.parse(timing[index]["color"]!);

                        return Container(
                          margin: const EdgeInsets.all(5),
                          height: height * 0.06,
                          width: width * 0.1 + 20,
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
                              color: Color(color)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                timing[index]["day"].toString(),
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 12),
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
              //second Row
              Row(
                children: [
                  SizedBox(
                    height: height * 0.06,
                    width: width * 0.8 + 32,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: timing.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          width: width * 0.3,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  offset: Offset(1, 2),
                                  color: Colors.grey,
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              color: Color(0xff767372)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                hour[index]["day"].toString(),
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 12),
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
              //time picker
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(1, 2),
                      color: Colors.grey,
                    )
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                height: height * 0.3,
                width: width * 0.9,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // hour
                        SizedBox(
                          width: width * 0.1,
                          child: ListWheelScrollView.useDelegate(
                            perspective: 0.005,
                            diameterRatio: 1.2,
                            itemExtent: 50,
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 13,
                              builder: (context, index) {
                                return MyHour(
                                  hour: index,
                                );
                              },
                            ),
                          ),
                        ),
                        //minitus
                        SizedBox(
                          width: width * 0.1,
                          child: ListWheelScrollView.useDelegate(
                            perspective: 0.005,
                            diameterRatio: 1.2,
                            itemExtent: 50,
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 60,
                              builder: (context, index) {
                                return Myminutes(
                                  mints: index,
                                );
                              },
                            ),
                          ),
                        ),
                        //am or pm
                        SizedBox(
                          width: width * 0.1,
                          child: ListWheelScrollView.useDelegate(
                            perspective: 0.005,
                            diameterRatio: 1.2,
                            itemExtent: 50,
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 2,
                              builder: (context, index) {
                                if (index == 0) {
                                  return AmPm(isItAm: true);
                                } else {
                                  return AmPm(isItAm: false);
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).padding.bottom + 50),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: Divider(
                            endIndent: 50,
                            indent: 50,
                            thickness: 1.5,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top - 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: Divider(
                            endIndent: 50,
                            indent: 50,
                            thickness: 1.5,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: height * 0.03,
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/timetable");
                  },
                  child: Container(
                    width: width * 0.4,
                    height: height * 0.1,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(1, 2),
                            color: Colors.grey,
                          )
                        ],
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary),
                    child: Center(
                        child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Myminutes extends StatelessWidget {
  int mints;
  Myminutes({
    super.key,
    required this.mints,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          mints < 10 ? "0$mints" : mints.toString(),
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary, fontSize: 20),
        ),
      ),
    );
  }
}

class MyHour extends StatelessWidget {
  int hour;
  MyHour({
    super.key,
    required this.hour,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          hour < 10 ? "0$hour:" : "${hour.toString()} :",
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary, fontSize: 20),
        ),
      ),
    );
  }
}

class AmPm extends StatelessWidget {
  bool isItAm;
  AmPm({
    super.key,
    required this.isItAm,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          isItAm == true ? "AM" : "PM",
          style: TextStyle(
              color: Theme.of(context).colorScheme.secondary, fontSize: 20),
        ),
      ),
    );
  }
}
