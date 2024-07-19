import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';
import 'package:study_budy/ui/widget/custom_textformfield.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: const Text("Payment"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              const Text("Access Code"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomTextformfield(
                textInputType: TextInputType.name,
                hintText: " Full Name",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text("Code"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomTextformfield(
                textInputType: TextInputType.number,
                hintText: "Access code numbers",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Code Success",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Your access code  is successfully right!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff767372)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/paymentmethod");
                },
                child: CustomPrimaryButton(
                  blur: false,
                  name: "Activate",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
