import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/data/map/test_map.dart';

class StudyRecomandation extends StatefulWidget {
  const StudyRecomandation({super.key});

  @override
  State<StudyRecomandation> createState() => _StudyRecomandationState();
}

class _StudyRecomandationState extends State<StudyRecomandation> {
  String? dropvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    "assets/png/Base.png",
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
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
            ),
            Container(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
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
                                  items: [
                                    'English',
                                    'Hindi',
                                    'Gujrati',
                                    'Gambia'
                                  ].map((value) {
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text("Study Time Recommendation"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                itemCount: studyrecomandation.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Theme.of(context).colorScheme.secondary,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                            spreadRadius: 2),
                      ],
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(studyrecomandation[index]["title"].toString()),
                          Text(
                              studyrecomandation[index]["subtitle"].toString()),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: const CircleBorder(),
        onPressed: () {},
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
                      Navigator.pushNamed(context, "/home");
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
                      Navigator.pushNamed(context, "/book");
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
                      Navigator.pushNamed(context, "/timingscreen");
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
                      Navigator.pushNamed(context, "/home");
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
