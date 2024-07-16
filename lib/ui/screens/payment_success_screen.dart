import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // image
            image(height, width),
            SizedBox(
              height: height * 0.02,
            ),
            //text
            text(),
            SizedBox(
              height: height * 0.02,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/home", (Route route) => false);
                },
                child: CustomPrimaryButton(name: "Free Trial", blur: true)),
            SizedBox(
              height: height * 0.02,
            ),
            CustomPrimaryButton(name: "Pay Now", blur: true),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              "Study Buddy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Find your interest to learn subjects, topics, and Complete \n challenges to get better!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }

  Container text() {
    return Container(
      child: const Text(
        "Try Our 7 days free  Trial!",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
      ),
    );
  }

  SizedBox image(double height, double width) {
    return SizedBox(
      height: height * 0.2,
      width: width * 0.5,
      child: Image.asset(
        fit: BoxFit.fitHeight,
        "assets/png/Icon.png",
      ),
    );
  }
}
