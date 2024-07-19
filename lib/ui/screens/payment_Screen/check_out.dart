import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String? _selectedLocation;
  int cartradio = 0;
  int radio = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // subject list
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 1,
                        offset: Offset(1, 2),
                        color: Colors.grey,
                      )
                    ],
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.03 + 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/png/grommet-icons_language.png"),
                      Text(
                        'English',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("On tap print");
                          DropdownButton(
                            value: _selectedLocation,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedLocation = newValue;
                              });
                            },
                            items: _locations.map((location) {
                              print(location);
                              return DropdownMenuItem(
                                value: location,
                                child: Text(location),
                              );
                            }).toList(),
                          );
                        },
                        child: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              //text
              const Text(
                "Payment Method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.3 + 20,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 3),
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 3)
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              fillColor: WidgetStateProperty.all(Colors.white),
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: 0,
                              groupValue: cartradio,
                              onChanged: (value) {
                                setState(() {
                                  cartradio = value!;
                                });
                              },
                            ),
                            Image.asset("assets/png/visa.png"),
                          ],
                        ),
                        Text(
                          "**** **** **** 1234",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              fillColor: WidgetStateProperty.all(Colors.white),
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: 1,
                              groupValue: cartradio,
                              onChanged: (value) {
                                setState(() {
                                  cartradio = value!;
                                });
                              },
                            ),
                            Image.asset("assets/png/master.png"),
                          ],
                        ),
                        Text(
                          "**** **** **** 1234",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              fillColor: WidgetStateProperty.all(Colors.white),
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: 2,
                              groupValue: cartradio,
                              onChanged: (value) {
                                setState(() {
                                  cartradio = value!;
                                });
                              },
                            ),
                            Image.asset("assets/png/master.png"),
                          ],
                        ),
                        Text(
                          "**** **** **** 1234",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Row(
                  children: [
                    Radio(
                      fillColor: WidgetStateProperty.all(Colors.white),
                      activeColor: Theme.of(context).colorScheme.primary,
                      value: 0,
                      groupValue: radio,
                      onChanged: (value) {
                        setState(() {
                          radio = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Text(
                      "Flutter Wave",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Row(
                  children: [
                    Radio(
                      fillColor: WidgetStateProperty.all(Colors.white),
                      activeColor: Theme.of(context).colorScheme.primary,
                      value: 1,
                      groupValue: radio,
                      onChanged: (value) {
                        setState(() {
                          radio = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Text(
                      "Afri-money",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: Row(
                  children: [
                    Radio(
                      fillColor: WidgetStateProperty.all(Colors.white),
                      activeColor: Theme.of(context).colorScheme.primary,
                      value: 2,
                      groupValue: radio,
                      onChanged: (value) {
                        setState(() {
                          radio = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Text(
                      "Access Code",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/payment");
                },
                child: CustomPrimaryButton(
                  blur: false,
                  name: "call for Support",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
