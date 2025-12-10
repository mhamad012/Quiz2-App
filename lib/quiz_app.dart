import 'package:flutter/material.dart';
import 'data/questions.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  // selectedAnswers is initially filled with empty strings indicating that the question is not yet answered.
  List<String> selectedAnswers = List.filled(questions.length, "");

  String activeScreenName = "questions-screen";

  void _restart() {
    setState(() {
      selectedAnswers = List.filled(questions.length, "");
      activeScreenName = 'questions-screen';
    });
  }

  String numberOfCorrectAnswers(List<String> answers) {
    final Map<String, int> counts = {
      'runApp()': 0,
      'Dart': 0,
      'Column': 0,
      'Row': 0,
    };

    for (String answer in answers) {
      counts[answer] = (counts[answer] ?? 0) + 1;
    }

    String resultType = 'runApp()';
    int maxCount = 0;

    counts.forEach((key, value) {
      if (value > maxCount) {
        maxCount = value;
        resultType = key;
      }
    });

    return resultType;
  }

  void _submit() {
    activeScreenName = 'results-screen';
  }

  void _selectAnswer(int index, String answer) {
    selectedAnswers = List.filled(index, answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeScreen;
    return Scaffold(backgroundColor: Colors.green, body: activeScreen);
  }
}
