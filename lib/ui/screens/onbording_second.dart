import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/data/map/progress_map.dart';
import 'package:study_budy/ui/widget/custom_button.dart';

class OnbordingSecond extends StatefulWidget {
  const OnbordingSecond({super.key});

  @override
  State<OnbordingSecond> createState() => _OnbordingSecondState();
}

class _OnbordingSecondState extends State<OnbordingSecond> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //background image
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/png/Background.png"),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.centerLeft,
              colors: [
                Color.fromARGB(255, 245, 143, 11),
                Color.fromARGB(255, 245, 143, 11),
              ],
            ),
          ),
        ),
        //back arrow
        Positioned(
          top: MediaQuery.of(context).padding.top + 20,
          left: MediaQuery.of(context).padding.left + 30,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.arrow_back_ios_new)),
          ),
        ),
        // All listtile
        Positioned(
          top: MediaQuery.of(context).size.height * 0.15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // challange text
                  Text(
                    "Challenge",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  //math progress
                  Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
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
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Math",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "5 days 13 hours left for you Mock Exams",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                )
                              ],
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  //progress
                  Text(
                    "Progress",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  //sets progres circular bar

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemCount: progress.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
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
                                      progress[index]["progress"].toString(),
                                    ),
                                    backgroundColor: const Color(0xffEAECF0),
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                            Colors.amber),
                                  ),
                                  Center(
                                    child: Text(
                                      progress[index]["percentage"].toString(),
                                      style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          progress[index]["title"].toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          progress[index]["subtitle"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.grey, fontSize: 10),
                                        )
                                      ],
                                    ),
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.09,
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10))),
                                        child: progress[index]["icon"]
                                                    .toString() ==
                                                "false"
                                            ? const Icon(Icons.add)
                                            : const Icon(
                                                Icons.check,
                                                color: Colors.green,
                                              ))
                                  ],
                                ),
                              ),
                            ],
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
                  // text
                  SizedBox(
                    height: 130,
                    width: MediaQuery.of(context).size.width * 1,
                    child: PageView.builder(
                      itemCount: onbordingText.length,
                      onPageChanged: (value) {
                        setState(() {
                          currentIndex = value;
                          print(value);
                        });
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                onbordingText[index]['title'].toString(),
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                onbordingText[index]['subtitle'].toString(),
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              child: Text(
                                onbordingText[index]['description'].toString(),
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                onbordingText[index]['subdescription']
                                    .toString(),
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  //dot indicator
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.09,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: onbordingText.length,
                      itemBuilder: (context, index) {
                        print("dot indicator $currentIndex");
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.02,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: currentIndex == index
                                ? Colors.amber
                                : Colors.white,
                            // color: Colors.red,
                            shape: BoxShape.circle,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 3,
                                spreadRadius: 1,
                                offset: Offset(1, 2),
                                color: Colors.grey,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/interest");
                    },
                    child: CustomButton(
                      name: "Continue",
                      image: Image.asset("assets/png/Login.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
