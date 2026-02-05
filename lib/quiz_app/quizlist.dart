import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Color color = Color(0xffFFF8DE);

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

  String? selectedOption;
  // bool isAnswer = false;

  bool isloading = false;

  List<String> selectedAnswer = [];
  List<int> iconsCount = [];

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
        {'text': 'inheritwidget', 'score': 0},
        {'text': 'statelesswidget', 'score': 1},
      ],
    },
    {
      'question': 'What does setState() do?',
      'answers': [
        {'text': 'Rebuild ui', 'score': 1},
        {'text': 'update database', 'score': 0},
        {
          'text': 'delete widget',
          'score': 0,
        },
      ],
    },
    {
      'question': 'Which widget is used for scrollable?',
      'answers': [
        {'text': 'Column', 'score': 0},
        {'text': 'Row', 'score': 0},
        {'text': 'ListView', 'score': 1},
      ],
    },
  ];

// answer
  void answerQuestion(int answerscore, String newAnswer) {
    setState(() {
      if (isloading) return;
      selectedOption = newAnswer;
      selectedAnswer.add(newAnswer);
      iconsCount.add(answerscore);
      score += answerscore;
      isloading = true;
    });

    Future.delayed(Duration(milliseconds: 1000), () {
      if (!mounted) return;
      setState(
        () {
          if (questionIndex < quiz.length) {
            isloading = false;
            questionIndex++;
            selectedOption = null;
          } else {
            questionIndex = quiz.length;
          }
        },
      );
    });
  }

//reset quiz
  reset() {
    selectedAnswer.clear();
    iconsCount.clear();

    questionIndex = 0;
    score = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // leading: Icon(CupertinoIcons.back),
        middle: Text("Quiz-App"),
        // trailing: Icon(CupertinoIcons.ellipsis_vertical),
      ),
      backgroundColor: const Color.fromARGB(255, 229, 228, 225),
      // appBar: AppBar(
      //   backgroundColor: Colors.amber[50],
      //   title: Text(
      //     "QUIZ-APP",
      //     style: TextStyle(fontFamily: "MyFonts"),
      //   ),
      //   leading: Transform.scale(
      //     scale: 0.6,
      //     child: CircleAvatar(
      //       backgroundColor: Colors.brown,
      //       child: Icon(
      //         Icons.arrow_back,
      //         color: Colors.white,
      //         size: 35,
      //       ),
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 8.0),
      //       child: CircleAvatar(
      //         radius: 16,
      //         backgroundColor: Colors.brown,
      //         child: Icon(Icons.more_vert, color: Colors.white),
      //       ),
      //     ),
      //   ],
      // ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: questionIndex < quiz.length
                    ? Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily quiz",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black12,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text(
                            "Hello, Max",
                            style: TextStyle(
                              color: Colors.black38,
                              decoration: TextDecoration.none,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      )
                    : Text(
                        "Daily scores",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black12,
                          decoration: TextDecoration.none,
                        ),
                      ),
              ),

              Spacer(),
              //  profile
              // questionIndex < quiz.length
              //     ? Container(
              //         padding: EdgeInsets.all(20),
              //         height: 80,
              //         width: 350,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: Colors.white,
              //         ),
              //         child: Row(
              //           children: [
              //             CircleAvatar(
              //               child: Icon(
              //                 Icons.person,
              //                 color: Colors.white,
              //               ),
              //               radius: 35,
              //               backgroundColor: Colors.brown,
              //             ),
              //             SizedBox(
              //               width: 20,
              //             ),
              //             Center(
              //               child: Text(
              //                 " Profile..",
              //                 style: TextStyle(
              //                   decoration: TextDecoration.none,
              //                   color: Colors.black,
              //                   fontSize: 20,
              //                   fontFamily: "MyFonts",
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       )
              //     : Container(),
              // SizedBox(
              //   height: 20,
              // ),
              questionIndex < quiz.length
                  ? Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 480,
                        width: 360,
                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                          // color: const Color.fromARGB(255, 252, 225, 215),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(9.0),
                              height: 150,
                              width: double.infinity,
                              margin:
                                  EdgeInsets.only(left: 30, right: 30, top: 20),
                              // alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "${quiz[questionIndex]["question"]}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    fontFamily: "MyFonts",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
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
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        surfaceTintColor: Colors.transparent,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () {
                                            answerQuestion(
                                              answer['score'] as int,
                                              answer['text'],
                                            );
                                          },
                                          child: AnimatedContainer(
                                            height: isloading ? 40 : 60,
                                            width: isloading ? 120 : 300,
                                            alignment: Alignment.center,
                                            duration:
                                                Duration(milliseconds: 1000),
                                            // curve: Curves.easeInExpo,

                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: selectedOption ==
                                                      answer['text']
                                                  ? (answer["score"] == 1
                                                      ? Colors.green.shade100
                                                      : Colors.red.shade100)
                                                  : Colors.white,
                                            ),

                                            child: Text(
                                              "${answer['text']}",
                                            ), // child: ElevatedButton(
                                            //   style: ElevatedButton.styleFrom(
                                            //     shape: RoundedRectangleBorder(
                                            //       borderRadius:
                                            //           BorderRadiusGeometry.circular(
                                            //         8,
                                            //       ),
                                            //     ),
                                            //     fixedSize: Size(300, 60),
                                            //     backgroundColor: Colors.white,
                                            //     shadowColor: Colors.white,
                                            //   ).copyWith(
                                            //     overlayColor: MaterialStateProperty
                                            //         .resolveWith(
                                            //       (states) => Colors.white,
                                            //     ),
                                            //     splashFactory:
                                            //         NoSplash.splashFactory,
                                            //   ),
                                            //   onPressed: isAnswer
                                            //       ? null
                                            //       : () {
                                            //           setState(() {
                                            //             selectedOption =
                                            //                 answer["text"];
                                            //           });
                                            //           answerQuestion(
                                            //             answer["score"] as int,
                                            //             answer['text'],
                                            //           );
                                            //         },
                                            //   child: Row(
                                            //     children: [
                                            //       Text(
                                            //         "${answer['text']}",
                                            //         style: TextStyle(
                                            //           color: Colors.black,
                                            //           fontSize: 16,
                                            //         ),
                                            //       ),
                                            //     ],
                                            //   ),
                                            // ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ],
                              ),
                            ),
                            // Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                spacing: 5,
                                children: iconsCount.map(
                                  (scores) {
                                    return CircleAvatar(
                                      radius: 10,
                                      backgroundColor: scores == 1
                                          ? Colors.green
                                          : Colors.red,
                                      child: Icon(
                                        scores == 1
                                            ? CupertinoIcons.check_mark
                                            : CupertinoIcons.clear,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      margin:
                          EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
                      height: 600,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // display scores
                          Padding(
                            padding:
                                EdgeInsetsGeometry.only(left: 12, right: 12),
                            child: Text(
                              'Your score: $score / ${quiz.length}',
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          // display  list of option you choose
                          Expanded(
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: selectedAnswer.length,
                              itemBuilder: (context, index) {
                                final isCorrect = iconsCount[index] == 1;
                                return Card(
                                  color: Colors.white,
                                  margin: EdgeInsets.all(8),
                                  child: ListTile(
                                    title: Text(
                                      "${index + 1}. ${quiz[index]["question"]}",
                                      style: TextStyle(),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "your answer: ${selectedAnswer[index]}",
                                          style: TextStyle(),
                                        ),
                                        Text(
                                          isCorrect
                                              ? "✓ correct answer"
                                              : "✘ wrong answer",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isCorrect
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          // this text field for total scored
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: ElevatedButton(
                              onPressed: () async {
                                setState(() => isloading = true);

                                await Future.delayed(
                                  Duration(milliseconds: 1100),
                                );
                                reset();
                                setState(() => isloading = false);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    isloading ? Colors.brown : Colors.brown,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 1000),
                                transitionBuilder: (child, animation) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: ScaleTransition(
                                      filterQuality: FilterQuality.high,
                                      scale: animation,
                                      child: child,
                                    ),
                                  );
                                },
                                child: isloading
                                    ? const Icon(
                                        Icons.done,
                                        key: ValueKey('done'),
                                        color: Colors.white,
                                      )
                                    : const Text(
                                        'Reset Quiz',
                                        key: ValueKey('reset'),
                                        style: TextStyle(color: Colors.white),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
