import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UploadingNote extends StatelessWidget {
  const UploadingNote({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _appbar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            //first row
            _firstRow(height, width),
            //Sets Notes
            SizedBox(
              height: height * 0.06,
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Sets Notes",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    //sets Notes container
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width * 0.09 + 5,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 2),
                                    color: Colors.grey,
                                  )
                                ],
                                color: Color(0xff3787FF),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: const Center(
                                  child: Text(
                                ".img",
                                style: TextStyle(fontSize: 12),
                              )),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "practice class",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      ".img",
                                      style: TextStyle(
                                          color: Color(0xff767372),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: width * 0.04,
                                    ),
                                    const Text(
                                      "4Mb",
                                      style: TextStyle(
                                          color: Color(0xff767372),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width * 0.09 + 5,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 2),
                                    color: Colors.grey,
                                  )
                                ],
                                color: Color(0xffFF9D42),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: const Center(
                                  child: Text(
                                ".img",
                                style: TextStyle(fontSize: 12),
                              )),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "practice class",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      ".img",
                                      style: TextStyle(
                                          color: Color(0xff767372),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: width * 0.04,
                                    ),
                                    const Text(
                                      "2Mb",
                                      style: TextStyle(
                                          color: Color(0xff767372),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Row(
                          children: [
                            Container(
                              width: width * 0.09 + 8,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 2),
                                    color: Colors.grey,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.09 + 5,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFF9D42),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(4)),
                                      child: Container(
                                        height: height * 0.05,
                                        width: width * 0.09,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffDA5742),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(4),
                                          ),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          ".img",
                                          style: TextStyle(fontSize: 12),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "practice class",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      ".img",
                                      style: TextStyle(
                                          color: Color(0xff767372),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: width * 0.04,
                                    ),
                                    const Text(
                                      "4Mb",
                                      style: TextStyle(
                                          color: Color(0xff767372),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/subjectPage");
                          },
                          child: Container(
                            width: width * 0.2 + 22,
                            height: height * 0.11,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    offset: Offset(0, 3),
                                    color: Colors.grey,
                                  )
                                ],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: Theme.of(context).colorScheme.primary),
                            child: Center(
                              child: Text(
                                "Choose Files",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.1 + 20,
                          height: height * 0.09,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: Offset(0, 3),
                                  color: Colors.grey,
                                )
                              ],
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.primary),
                          child: Image.asset("assets/png/audio book.png"),
                        ),
                        Container(
                          width: width * 0.2 + 30,
                          height: height * 0.11,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: Offset(0, 3),
                                  color: Colors.grey,
                                )
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Theme.of(context).colorScheme.primary),
                          child: Center(
                            child: Text(
                              "Scan Materials",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _firstRow(double height, double width) {
    return Row(
      children: [
        Container(
          height: height * 0.07,
          width: width * 0.15,
          decoration: const BoxDecoration(),
          child: Image.asset(
            "assets/png/Base.png",
          ),
        ),
        SizedBox(
          width: width * 0.02,
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
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      leadingWidth: 65,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(25),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Image.asset("assets/png/Right_Icon_home.png"),
        )
      ],
    );
  }
}
