import 'question-data.dart';

class QuizBrain {
  int _questionIndex = 0;

  List<QuestionData> _questions = [
    QuestionData('You can lead a cow down stairs but not up stairs.', false),
    QuestionData(
        'Approximately one quarter of human bones are in the feet.', true),
    QuestionData('A slug\'s blood is green.', true),
    QuestionData('Some cats are actually allergic to humans', true),
    QuestionData('You can lead a cow down stairs but not up stairs.', false),
    QuestionData(
        'Approximately one quarter of human bones are in the feet.', true),
    QuestionData('A slug\'s blood is green.', true),
    QuestionData('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    QuestionData('It is illegal to pee in the Ocean in Portugal.', true),
    QuestionData(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    QuestionData(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    QuestionData(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    QuestionData(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    QuestionData('Google was originally called \"Backrub\".', true),
    QuestionData(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    QuestionData(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (this._questionIndex < this._questions.length - 1) {
      this._questionIndex++;
    }
  }

  String getQuestionText() {
    return this._questions[this._questionIndex].text;
  }

  bool getQuestionAnswer() {
    return this._questions[this._questionIndex].answer;
  }
}
