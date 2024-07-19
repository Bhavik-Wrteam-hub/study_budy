import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class EditStudy extends StatefulWidget {
  const EditStudy({super.key});

  @override
  State<EditStudy> createState() => _EditStudyState();
}

class _EditStudyState extends State<EditStudy> {
  bool _buttonvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: const Text("Edit"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(label: Text("Maths")),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text("Icon and Color"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  //first container
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.height * 0.1 + 65,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 3,
                              spreadRadius: 1,
                              color: Colors.grey)
                        ]),
                    child: Row(
                      children: [
                        const Text("🚶‍♀️"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        const Text("Sets"),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),

                  Container(
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.height * 0.1 + 65,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 3,
                              spreadRadius: 1,
                              color: Colors.grey)
                        ]),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.08,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        const Column(
                          children: [
                            Text("Orange"),
                            Text(
                              "Color",
                              style: TextStyle(color: Color(0xff9B9BA1)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text("Goal"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //second  container
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1 + 15,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 3),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ]),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("1 times"),
                            Text(
                              "or more per day",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff9B9BA1),
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.edit)
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset("assets/png/refresh.png"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          const Text("Daily"),
                          Image.asset("assets/png/Paper.png"),
                          const Text("Every day"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //third container
              Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1 + 15,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 3),
                        spreadRadius: 3,
                        blurRadius: 3,
                      )
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Remember to set off time.",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff9B9BA1),
                          ),
                        ),
                        CupertinoSwitch(
                          value: _buttonvalue,
                          onChanged: (value) {
                            setState(() {
                              _buttonvalue = value;
                            });
                          },
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Image.asset("assets/png/refresh.png"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          const Text("Daily"),
                          Image.asset("assets/png/Paper.png"),
                          const Text("Every day"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //add remider button add
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 3),
                          blurRadius: 3,
                          spreadRadius: 2)
                    ]),
                child: const Center(child: Text("Add Reminder")),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/studyrecomandation");
                },
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    child: CustomPrimaryButton(
                      blur: false,
                      name: "Add Habit",
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
