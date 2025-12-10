class QuizQuestion {
  final List<String> shuffledAnswers;
  final String text;
  String correctAnswer;
  List<String> answers;
  QuizQuestion({
    required String text,
    required List<String> answers,
    required String correctAnswer,
  }) : shuffledAnswers = List.of(answers)..shuffle();
}
