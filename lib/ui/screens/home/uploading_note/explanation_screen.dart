import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class ExplanationScreen extends StatelessWidget {
  const ExplanationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Theme.of(context).colorScheme.secondary,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(1, 2),
                      color: Color.fromARGB(255, 202, 185, 185),
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.2,
                child: const Text(
                    "Sets are represented as a collection of well-defined objects or elements and it does not change from person to person. A set is represented by a capital letter. The number of elements in the finite set is known as the cardinal number of a set."),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              );
            },
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        CustomPrimaryButton(name: "Explain More", blur: false)
      ],
    );
  }
}
