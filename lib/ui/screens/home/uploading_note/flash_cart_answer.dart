import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class FlashCartAnswer extends StatelessWidget {
  const FlashCartAnswer({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // first container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: height * 0.4,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Theme.of(context).colorScheme.secondary,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(0, 2),
                      color: Colors.grey,
                    )
                  ],
                ),
                child: const Center(
                    child: Text(
                  "Sets in mathematics, are simply a collection of distinct objects forming a group. A set can have any group of items, be it a collection of numbers, days of a week, types of vehicles, and so on. Every item in the set is called an element of the set. Curly brackets are used while writing a set. A very simple example of a set would be like this. Set A = {1, 2, 3, 4, 5}. In set theory, there are various notations to represent elements of a set. Sets are usually represented using a roster form or a set builder form. Let us discuss each of these terms in detail.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff767372),
                      fontSize: 12),
                )),
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            // button code
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/complatedflashcart");
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: height * 0.05,
                  width: width * 0.6,
                  child: CustomPrimaryButton(
                    blur: false,
                    name: "Next",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
