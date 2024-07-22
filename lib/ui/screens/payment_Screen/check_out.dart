import 'package:flutter/material.dart';
import 'package:study_budy/ui/widget/custom_primary_button.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  String? dropvalue;

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
                  width: MediaQuery.of(context).size.width * 0.3 + 20,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3 + 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width * 0.04,
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "assets/png/grommet-icons_language.png"),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(5),
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    child: DropdownButton(
                                      iconDisabledColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      iconEnabledColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      icon: const Center(
                                          child: Icon(Icons.arrow_drop_down)),
                                      // padding: const EdgeInsets.only(top: 10),
                                      underline: const SizedBox(),
                                      hint: Text(
                                        dropvalue ?? "English",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                      ),
                                      alignment: Alignment.topCenter,
                                      items: [
                                        'English',
                                        'Hindi',
                                        'Gujrati',
                                        'Gambia'
                                      ].map((value) {
                                        return DropdownMenuItem(
                                          alignment: Alignment.center,
                                          value: value,
                                          child: Container(
                                            color: Colors.amber,
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          dropvalue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
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
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
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
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
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
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
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
