import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/ui/screens/home/uploading_note/example_screen.dart';
import 'package:study_budy/ui/screens/home/uploading_note/explanation_screen.dart';
import 'package:study_budy/ui/screens/home/uploading_note/practice_screen.dart';

class FlashSummeryScreen extends StatefulWidget {
  const FlashSummeryScreen({super.key});

  @override
  State<FlashSummeryScreen> createState() => _FlashSummeryScreenState();
}

class _FlashSummeryScreenState extends State<FlashSummeryScreen>
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: currentindex == 0
            ? const Text("Explanation")
            : currentindex == 1
                ? const Text("Examples")
                : const Text("Practice"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset("assets/png/Right_Icon_flash.png"),
          ),
        ],
      ),
      body: Column(
        children: [
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.03,
          // ),
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
                  text: "Explanation",
                ),
                Tab(
                  text: "Examples",
                ),
                Tab(
                  text: "Practice",
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
                children: const [
                  ExplanationScreen(),
                  ExampleScreen(),
                  PracticeScreen(),
                ],
              ),
            ),
          )
        ],
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
                      Navigator.pushNamed(context, "/home");
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
