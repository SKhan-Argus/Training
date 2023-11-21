import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Water boils at 100 degrees Celsius at sea level.', true),
    Question('The Earth revolves around the Sun.', true),
    Question('Oxygen is the most abundant element in the Earth\'s crust.', false),
    Question('The chemical symbol for gold is Au.', true),
    Question('Sound travels faster in water than in air.', true),
    Question('Plants use photosynthesis to convert sunlight into energy.', true),
    Question('The Earth has one natural satellite, which is the Moon.', true),
    Question('The human body has 206 bones.', false),
    Question('Light is made up of tiny particles called photons.', true),
    Question('The process of turning a gas into a liquid is called condensation.', true),
    Question('The nucleus is the center of an atom and contains protons and neutrons.', true),
    Question('A prism can be used to split white light into its different colors.', true),
    Question('Hydrogen is the most abundant element in the universe.', true),
    Question('Electricity is the flow of electrons.', true),
  ];

  void nextQuestion() {
    _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

//TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    int totalQuestions = _questionBank.length;
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

//TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

//TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = -1;
  }
}
