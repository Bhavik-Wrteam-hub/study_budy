import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study_budy/ui/colors/colors.dart';
import 'package:study_budy/ui/screens/home/book_screen.dart';
import 'package:study_budy/ui/screens/home/home_page.dart';
import 'package:study_budy/ui/screens/home/study_planer/edit_study.dart';
import 'package:study_budy/ui/screens/home/study_planer/pending_screen.dart';
import 'package:study_budy/ui/screens/home/study_planer/study_recomandation.dart';
import 'package:study_budy/ui/screens/home/study_planer/time_table.dart';
import 'package:study_budy/ui/screens/home/study_planer/timing_screen.dart';
import 'package:study_budy/ui/screens/home/uploading_note/compalated_flash_cart.dart';
import 'package:study_budy/ui/screens/home/uploading_note/flash_cart_answer.dart';
import 'package:study_budy/ui/screens/home/uploading_note/flash_cart_home.dart';
import 'package:study_budy/ui/screens/home/uploading_note/flash_cart_question.dart';
import 'package:study_budy/ui/screens/home/uploading_note/flash_summery_screen.dart';
import 'package:study_budy/ui/screens/home/uploading_note/subject_page.dart';
import 'package:study_budy/ui/screens/home/uploading_note/uploading_note.dart';
import 'package:study_budy/ui/screens/interest_screen.dart';
import 'package:study_budy/ui/screens/onbording_first.dart';
import 'package:study_budy/ui/screens/onbording_second.dart';
import 'package:study_budy/ui/screens/payment_success_screen.dart';
import 'package:study_budy/ui/screens/question_screen.dart';
import 'package:study_budy/ui/screens/result_screen.dart';
import 'package:study_budy/ui/screens/subject_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        enabled: true,
        builder: (context) {
          return Container(
            child: Builder(builder: (context) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  primaryColor: primarycolor,
                  scaffoldBackgroundColor: scaffoldbackgroundcolor,
                  useMaterial3: true,
                  colorScheme: ColorScheme.fromSeed(seedColor: primarycolor)
                      .copyWith(
                          secondary: secondorycolor, primary: primarycolor),
                ),
                routes: {
                  "/": (context) => const OnbordingFirst(),
                  "/onbordingSecond": (context) => const OnbordingSecond(),
                  "/interest": (context) => const InterestScreen(),
                  "/subject": (context) => const SubjectScreen(),
                  "/question": (context) => const QuestionScreen(),
                  "/result": (context) => const ResultScreen(),
                  "/paymentsuccess": (context) => const PaymentSuccessScreen(),
                  "/home": (context) => const HomePage(),
                  "/book": (context) => const BookScreen(),
                  "/uploadnote": (context) => const UploadingNote(),
                  "/subjectPage": (context) => const SubjectPage(),
                  "/flashcarthome": (context) => const FlashCartHome(),
                  "/flashcartquestion": (context) => const FlashCartQuestion(),
                  "/flashcartanswer": (context) => const FlashCartAnswer(),
                  "/complatedflashcart": (context) =>
                      const CompalatedFlashCart(),
                  "/flashsummmery": (context) => const FlashSummeryScreen(),
                  "/timingscreen": (context) => const TimingScreen(),
                  "/timetable": (context) => const TimeTable(),
                  "/pending": (context) => const PendingScreen(),
                  "/editstudy": (context) => const EditStudy(),
                  "/studyrecomandation": (context) =>
                      const StudyRecomandation(),
                },
              );
            }),
          );
        });
  }
}
