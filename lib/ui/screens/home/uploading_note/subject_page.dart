import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 65,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset("assets/png/Left_Icon_home.png"),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset("assets/png/Setting.png"),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            // user details
            Row(
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
            ),
            // four container
            SizedBox(
              height: height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/flashcarthome");
              },
              child: SizedBox(
                height: height * 0.1,
                child: CustomPrimaryButton(
                  name: "Explanation",
                  blur: false,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.1,
              child: CustomPrimaryButton(
                name: "Examples",
                blur: false,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.1,
              child: CustomPrimaryButton(
                name: "Flash Cards",
                blur: false,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            SizedBox(
              height: height * 0.1,
              child: CustomPrimaryButton(
                name: "Practice",
                blur: false,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
