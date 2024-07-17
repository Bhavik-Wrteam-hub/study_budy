import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/data/map/test_map.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class PendingScreen extends StatelessWidget {
  const PendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        actions: [
          Image.asset("assets/png/Notification.png"),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
        ],
        title: const Text("Time Table"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: SfCalendar(
                    showDatePickerButton: true,
                    showNavigationArrow: true,
                    cellBorderColor: Theme.of(context).colorScheme.secondary,
                    view: CalendarView.month,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const Text(
                  "Pending Test",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                //pending container
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: pending.length,
                    itemBuilder: (context, index) {
                      double value =
                          double.parse(pending[index]["value"].toString());
                      return Container(
                        padding: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.11,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).colorScheme.primary),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pending[index]["title"].toString(),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  pending[index]["leftsubtitle"].toString(),
                                  style: TextStyle(
                                    fontSize: 13,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                Text(
                                  pending[index]["rightsubtitle"].toString(),
                                  style: TextStyle(
                                    fontSize: 13,
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            LinearProgressIndicator(
                                minHeight: 7,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: Colors.black,
                                value: value)
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Completed ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.05,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/png/Group.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        const Text("18 March 2021")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                //complated container
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: completed.length,
                    itemBuilder: (context, index) {
                      double value =
                          double.parse(completed[index]["value"].toString());
                      return Container(
                        padding: const EdgeInsets.all(10),
                        height: MediaQuery.of(context).size.height * 0.11,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).colorScheme.primary),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              completed[index]["title"].toString(),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              completed[index]["subtitle"].toString(),
                              style: TextStyle(
                                fontSize: 13,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            LinearProgressIndicator(
                              minHeight: 7,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.black,
                              value: value,
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/editstudy");
                  },
                  child: Container(
                    child: CustomPrimaryButton(
                      name: "Edit",
                      blur: false,
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
