import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_budy/data/map/subject_map.dart';

class FlashCartHome extends StatelessWidget {
  const FlashCartHome({super.key});

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
        title: const Text(
          "Sets Flashcard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            //Learned today
            _learningContainer(context, height),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            // three container
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.23,
                width: MediaQuery.of(context).size.width * 0.9,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: flashmap.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0, 2),
                            color: Colors.grey,
                          )
                        ],
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              flashmap[index]["title"].toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: LinearProgressIndicator(
                                  minHeight: 7,
                                  backgroundColor: Colors.white,
                                  color: const Color(0xff060302),
                                  borderRadius: BorderRadius.circular(10),
                                  value: double.parse(
                                      flashmap[index]["value"].toString()),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  "Completed",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      flashmap[index]["subtitle"].toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, "/flashcartquestion");
                                      },
                                      child: Container(
                                        height: height * 0.05,
                                        width: width * 0.10,
                                        decoration: const BoxDecoration(
                                          color: Colors.black,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _learningContainer(BuildContext context, double height) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.14,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(0, 2),
            color: Colors.grey,
          )
        ],
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Learned today",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "46min / 60min",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 10),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LinearProgressIndicator(
              minHeight: 7,
              backgroundColor: Colors.white,
              color: const Color(0xff060302),
              borderRadius: BorderRadius.circular(10),
              value: 0.5,
            ),
          )
        ],
      ),
    );
  }
}
