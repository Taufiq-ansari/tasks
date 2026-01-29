import 'package:flutter/material.dart';

Color color = Colors.white;

class MyQuizApp extends StatefulWidget {
  const MyQuizApp({super.key});

  @override
  State<MyQuizApp> createState() => _MyQuizAppState();
}

class _MyQuizAppState extends State<MyQuizApp> {
  int questionIndex = 0;
  int score = 0;

  // int correctAnswer = 0;
  // int wrongAnswer = 0;

  List<String> selectedAnswer = [];

  // list of questions
  List<Map<String, dynamic>> quiz = [
    {
      'question': 'What is Flutter?',
      'answers': [
        {'text': 'A bird', 'score': 0},
        {'text': 'A UI framework', 'score': 1},
        {'text': 'A database', 'score': 0},
      ],
    },
    {
      'question': 'Which language does Flutter use?',
      'answers': [
        {'text': 'Java', 'score': 0},
        {'text': 'Kotlin', 'score': 0},
        {'text': 'Dart', 'score': 1},
      ],
    },
    {
      'question': 'Who develops Flutter?',
      'answers': [
        {'text': 'Apple', 'score': 0},
        {'text': 'Google', 'score': 1},
        {'text': 'Microsoft', 'score': 0},
      ],
    },
    {
      'question': 'What widget is used for immutable ui?',
      'answers': [
        {'text': 'statefullwidget', 'score': 0},
        {'text': 'statelesswidget', 'score': 1},
        {'text': 'inheritwidget', 'score': 0},
      ],
    },
    {
      'question': 'What does setState() do?',
      'answers': [
        {'text': 'update database', 'score': 0},
        {'text': 'Rebuild ui', 'score': 1},
        {'text': 'delete widget', 'score': 0},
      ],
    },
    {
      'question': 'Which widget is used for scrollable?',
      'answers': [
        {'text': 'Column', 'score': 0},
        {'text': 'ListView', 'score': 1},
        {'text': 'Row', 'score': 0},
      ],
    },
  ];

// function .....

// answer
  void answerQuestion(int answerscore, String newAnswer) {
    setState(() {
      selectedAnswer.add(newAnswer);
      score += answerscore;
      questionIndex++;
    });
  }

//reset
  reset() {
    selectedAnswer.clear();
    questionIndex = 0;
    score = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
        title: Text(
          "QUIZ-APP",
          style: TextStyle(fontFamily: "MyFonts"),
        ),
      ),
      body: questionIndex < quiz.length
          ? Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${questionIndex + 1}. ${quiz[questionIndex]["question"]}",
                  style: TextStyle(fontSize: 24, fontFamily: "MyFonts"),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...(quiz[questionIndex]['answers']
                              as List<Map<String, dynamic>>)
                          .map((answer) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(180, 40),
                          ),
                          onPressed: () {
                            answerQuestion(
                              answer["score"] as int,
                              answer['text'],
                            );
                          },
                          child: Text(answer['text'] as String),
                        );
                      }).toList(),
                    ],
                  ),
                ),

                // container for icons
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // list  for display answer
                  ...List.generate(selectedAnswer.length, (index) {
                    return Text(
                      " ${selectedAnswer[index]}",
                      style: TextStyle(),
                    );
                  }),
                  Text(
                    'Your score: $score / ${quiz.length}',
                    style: const TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: reset,
                    child: const Text('Restart Quiz'),
                  ),
                ],
              ),
            ),
    );
  }
}
