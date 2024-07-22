import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  int? enddTime;
  int? starttTime;
  String? titlee;

  TextEditingController title = TextEditingController();
  TextEditingController startTime = TextEditingController();
  TextEditingController endTime = TextEditingController();
  String? dropvalue;

  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
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
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.3 + 20,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3 + 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * 0.04,
                          height: MediaQuery.of(context).size.height * 0.02,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                  "assets/png/grommet-icons_language.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              height: MediaQuery.of(context).size.height * 0.03,
                              child: DropdownButton(
                                iconDisabledColor:
                                    Theme.of(context).colorScheme.secondary,
                                iconEnabledColor:
                                    Theme.of(context).colorScheme.secondary,
                                icon: const Center(
                                    child: Icon(Icons.arrow_drop_down)),
                                // padding: const EdgeInsets.only(top: 10),
                                underline: const SizedBox(),
                                hint: Text(
                                  dropvalue ?? "English",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                alignment: Alignment.topCenter,
                                items: ['English', 'Hindi', 'Gujrati', 'Gambia']
                                    .map((value) {
                                  return DropdownMenuItem(
                                    alignment: Alignment.center,
                                    value: value,
                                    child: Container(
                                      color: Colors.amber,
                                      child: Text(value),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    dropvalue = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
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
              SizedBox(
                height: height * 0.5 + 10,
                child: SfCalendar(
                  cellBorderColor: Colors.black54,
                  view: CalendarView.week,
                  dataSource: MeetingDataSorce(getAppointments(
                      title: titlee ?? "emty",
                      context: context,
                      endtime: enddTime,
                      starttime: starttTime ?? 0)),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              //
              GestureDetector(
                onTap: () {
                  _bottomSheet(context);
                },
                child: SizedBox(
                  height: height * 0.06,
                  child: CustomPrimaryButton(
                    name: "+  Add New Schedule",
                    blur: false,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/pending");
                },
                child: SizedBox(
                  height: height * 0.06,
                  child: CustomPrimaryButton(
                    name: "+  Save and Start Now",
                    blur: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> _bottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Add the Time",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextField(
                      onChanged: (value) {
                        titlee = value;
                        print(titlee);
                      },
                      controller: title,
                      decoration:
                          const InputDecoration(hintText: "Enter the title"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextField(
                      onChanged: (value) {
                        starttTime = int.parse(value);
                        print(startTime);
                      },
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                      ],
                      controller: startTime,
                      decoration: const InputDecoration(
                          hintText: "Enter the Start Time"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextField(
                      onChanged: (value) {
                        enddTime = int.parse(value);
                        print(endTime);
                      },
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9.,]')),
                      ],
                      controller: endTime,
                      decoration:
                          const InputDecoration(hintText: "Enter the End Time"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          getAppointments(
                            context: context,
                            starttime: starttTime,
                            endtime: enddTime,
                            title: titlee,
                          );
                          Navigator.pop(context);
                        },
                        child: const Text("Submit"))
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

List<Appointment> getAppointments({context, starttime, endtime, title}) {
  //print("This is the title" + title);
  List<Appointment> meetings = <Appointment>[];

  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, starttime, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(
    Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: title.toString(),
      color: Theme.of(context).colorScheme.primary,
    ),
  );

  return meetings;
}

class MeetingDataSorce extends CalendarDataSource {
  MeetingDataSorce(List<Appointment> source) {
    appointments = source;
  }
}
