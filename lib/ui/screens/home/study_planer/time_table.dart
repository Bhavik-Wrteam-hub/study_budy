import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    bool switchValue = true;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        actions: [
          const Icon(Icons.notifications_active_outlined),
          SizedBox(
            width: width * 0.04,
          ),
        ],
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
          width: width * 0.3,
          height: height * 0.03 + 5,
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //First Container
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(1, 2),
                        color: Colors.grey,
                      )
                    ],
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                height: height * 0.08,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Hay, Kara  do you want get notification\nfor your schedule",
                      style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    CupertinoSwitch(
                      thumbColor: Theme.of(context).colorScheme.primary,
                      activeColor: Theme.of(context).colorScheme.secondary,
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              //Second Container
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(1, 2),
                        color: Colors.grey,
                      )
                    ],
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                height: height * 0.08,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.08,
                      width: width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: Theme.of(context).colorScheme.secondary),
                      child: const Center(
                        child: Text(
                          "Home",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.08,
                      width: width * 0.2 + 5,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: Theme.of(context).colorScheme.secondary),
                      child: const Center(
                        child: Text(
                          "Studying",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.08,
                      width: width * 0.2 + 5,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: Theme.of(context).colorScheme.secondary),
                      child: const Center(
                        child: Text(
                          "Timetable",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "Today’s Schedule",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              //time table
              Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(1, 2),
                        color: Colors.grey,
                      )
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: Theme.of(context).colorScheme.secondary),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Date"),
                              Text("Sat"),
                              Text("Jan"),
                              Text("Mon"),
                              Text("Tue"),
                              Text("Wed"),
                              Text("Thu"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          height: height * 0.4 + 30,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("AM"),
                              Text("PM"),
                              Text("AM"),
                              Text("PM"),
                              Text("AM"),
                            ],
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      left: 20,
                      child: Container(
                          color: Colors.black, child: const VerticalDivider()),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
