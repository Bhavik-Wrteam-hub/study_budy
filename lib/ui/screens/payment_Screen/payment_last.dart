import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class PaymentLast extends StatelessWidget {
  const PaymentLast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset(
                fit: BoxFit.fitHeight,
                "assets/png/Icon.png",
              ),
            ),
            const Text(
              "Successful purchase!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (Route<dynamic> route) => false);
              },
              child: CustomPrimaryButton(
                blur: false,
                name: "Start learning",
              ),
            )
          ],
        ),
      ),
    );
  }
}
