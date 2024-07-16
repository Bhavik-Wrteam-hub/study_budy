import 'package:flutter/material.dart';
import 'package:study_budy/data/map/question_map.dart';
import 'package:study_budy/ui/screens/result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentQuestionIndex = 0;

  void _nextQuestion() {
    setState(() {
      if (currentQuestionIndex < question.length - 1) {
        currentQuestionIndex++;
      } else {
        Navigator.pushNamedAndRemoveUntil(
            context, "/result", (Route<dynamic> route) => false);
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        leading: Image.asset("assets/png/back.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset("assets/png/bookmark.png"),
          ),
        ],
        title: Image.asset("assets/png/timmer.png"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Score and progress text widgets
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Coins :',
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 200, 207),
                        ),
                      ),
                      TextSpan(
                        text: '120',
                        style: TextStyle(
                          color: Color(0xff45536D),
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '04 /',
                        style: TextStyle(
                          color: Color(0xff45536D),
                        ),
                      ),
                      TextSpan(
                        text: '20',
                        style: TextStyle(
                            color: Color.fromARGB(255, 196, 200, 207)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 1,
            child: PageView.builder(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: question.length,
              onPageChanged: (value) {
                setState(() {
                  currentQuestionIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      question[index]["question"].toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff45536D),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeIn,
                        );
                        _nextQuestion();

                        print("this is the index $currentQuestionIndex");
                      },
                      child: Text(
                        question[index]["option1"].toString(),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff45536D),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeIn,
                        );
                        _nextQuestion();

                        print("this is the index $currentQuestionIndex");
                      },
                      child: Text(
                        question[index]["option2"].toString(),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff45536D),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    if (question[index]["option3"] != null)
                      GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeIn,
                          );
                          _nextQuestion();

                          print("this is the index $currentQuestionIndex");
                        },
                        child: Text(
                          question[index]["option3"].toString(),
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff45536D),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    if (question[index]["option4"] != null)
                      GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeIn,
                          );
                          _nextQuestion();

                          print("this is the index $currentQuestionIndex");
                        },
                        child: Text(
                          question[index]["option4"].toString(),
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff45536D),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
