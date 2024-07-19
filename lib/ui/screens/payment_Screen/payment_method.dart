import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';
import 'package:study_budy/ui/widget/custom_textformfield.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add  your payment method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text("Card Name"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomTextformfield(
                textInputType: TextInputType.text,
                hintText: "My VISA card",
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text("Card Number"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomTextformfield(
                textInputType: TextInputType.number,
                hintText: "4000  1234  5678  9010 ",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Exp Date"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextformfield(
                            hintText: "",
                            textInputType: TextInputType.datetime),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("CVV2"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextformfield(
                            hintText: "", textInputType: TextInputType.number),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/paymentlast");
                },
                child: CustomPrimaryButton(
                  blur: false,
                  name: "Continiue  ",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
