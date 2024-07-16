import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class CompalatedFlashCart extends StatelessWidget {
  const CompalatedFlashCart({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_new_sharp)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: height * 0.4,
            width: width * 0.8,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              color: Theme.of(context).colorScheme.secondary,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 15,
                  spreadRadius: 1,
                  offset: Offset(0, 7),
                  color: Colors.grey,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: height * 0.08,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 1,
                            offset: Offset(0, 6),
                            color: Colors.grey,
                          )
                        ],
                        color: Theme.of(context).colorScheme.primary,
                        shape: BoxShape.circle),
                    child: Icon(
                      size: 40,
                      Icons.check,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Text(
                    "Success",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Text(
                    "Congratulations, you have\ncompleted your flashcard!",
                    style: TextStyle(
                      color: Color(0xff767372),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: height * 0.05,
                      width: width * 0.6,
                      child: CustomPrimaryButton(
                        blur: false,
                        name: "Do More Flashcards",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: height * 0.05,
                      width: width * 0.6,
                      child: GestureDetector(
                        onTap: () {
                          print("Tap on Done");
                          Navigator.pushNamed(context, "/flashsummmery");
                        },
                        child: CustomPrimaryButton(
                          blur: false,
                          name: "Done",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
