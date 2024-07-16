import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class FlashCartQuestion extends StatelessWidget {
  const FlashCartQuestion({super.key});

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
                  "What  is Sets?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            // button code
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/flashcartanswer");
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: height * 0.05,
                  width: width * 0.6,
                  child: CustomPrimaryButton(
                    blur: false,
                    name: "Preview",
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
