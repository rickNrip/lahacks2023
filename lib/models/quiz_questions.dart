class QuizQuestion {
  const QuizQuestion(this.textQuiz, this.answers);

  final String textQuiz;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
