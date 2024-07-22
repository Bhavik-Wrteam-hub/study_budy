import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/data/map/result_map.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              //App bar
              appbar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              //Math Performance
              mathperformance(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              //All Performance
              allPerformance(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //Topic Results text
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Topic Results",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //more container
              morecontainer(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/paymentsuccess");
                },
                child: CustomPrimaryButton(
                  blur: true,
                  name: "Activate Study Buddy",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container morecontainer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 + 65,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(1, 2),
            color: Color.fromARGB(255, 202, 185, 185),
          )
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1 + 45,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView.builder(
              itemCount: result.length,
              physics:
                  const ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator.adaptive(
                              value: double.parse(
                                result[index]["progress"].toString(),
                              ),
                              backgroundColor: const Color(0xff060302),
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.amber),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7 + 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(result[index]["title"].toString()),
                                Text(result[index]["percentage"].toString())
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Text("more")
        ],
      ),
    );
  }

  Container allPerformance(BuildContext context) {
    return Container(
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
                  width: MediaQuery.of(context).size.width * 0.7 + 20,
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
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffEAECF0),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: const Icon(Icons.arrow_drop_down_outlined))
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
    );
  }

  Container mathperformance(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 + 10,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Math Performance",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Text(
                      "60%",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "D",
                  style: TextStyle(
                      fontSize: 35,
                      color: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
            // SizedBox(
            //     height: MediaQuery.of(context).size.height * 0.01),
            LinearProgressIndicator(
              backgroundColor: const Color(0xff767372),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
              value: 0.5,
            ),
          ],
        ),
      ),
    );
  }

  Row appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Kara",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              "Here is your performance",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ],
        ),
        Image.asset("assets/png/Avatar.png"),
      ],
    );
  }
}
