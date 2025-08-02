import 'dart:io';

void main() {
  print("🎯 Welcome to the Dart CLI Quiz App!\n");

  int score = 0;

  List<Map<String, Object>> quiz = [
    {
      "question": "1. What is Dart mainly used for?",
      "options": ["Web Dev", "App Dev", "Game Dev", "All of the above"],
      "answer": 4,
    },
    {
      "question": "2. What is the correct way to declare a variable in Dart?",
      "options": ["let x = 5;", "var x = 5;", "int x == 5;", "x := 5;"],
      "answer": 2,
    },
    {
      "question": "3. Which keyword is used for constant values?",
      "options": ["final", "const", "var", "static"],
      "answer": 2,
    },
    {
      "question":
          "4.  What is the correct syntax to declare a function in Dart?",
      "options": [".dart", ".java", ".d", ".drt"],
      "answer": 1,
    },
    {
      "question": "5. Which of these is a valid List in Dart?",
      "options": [
        "function Func-name() {}",
        "void Func-name() {}",
        "def Func-name() {}",
        "fun Func-name() {}",
      ],
      "answer": 2,
    },
    {
      "question": "6. Who developed Dart?",
      "options": ["Apple", "Microsoft", "Google", "None of the above"],
      "answer": 3,
    },
    {
      "question": "7.Which of these is a valid List ia Dart?",
      "options": ["[1,2,3]", "{1,2,3}", "(1,2,3)", "<1,2,3>"],
      "answer": 1,
    },
    {
      "question": "8. What is the correct way to declare a map in Dart?",
      "options": [
        "var myMap = { 'a': 1, 'b': 2 };",
        "var myMap = [ 'a', 1, 'b', 2 ];",
        "var myMap = ( 'a': 1, 'b': 2 );",
        "var myMap = <'a', 1, 'b', 2>;",
      ],
      "answer": 1,
    },
    {
      "question":
          "9. What is the correct way to print output using stdout in Dart?",
      "options": [
        "stdout.write('Hello');",
        "printout('Hello');",
        "console.log('Hello');",
        "System.out.println('Hello');",
      ],
      "answer": 1,
    },
    {
      "question":
          "10. What is the correct way to get input from the user in Dart?",
      "options": [
        "input()",
        "stdin.readLineSync()",
        "read()",
        "Console.ReadLine()",
      ],
      "answer": 2,
    },
  ];

  for (var q in quiz) {
    print(q["question"]);
    List options = q["options"] as List<String>;
    for (int i = 0; i < options.length; i++) {
      print("  ${i + 1}. ${options[i]}");
    }

    stdout.write("Your answer (1-4): ");
    String? input = stdin.readLineSync();
    int? userAnswer = int.tryParse(input ?? "");

    if (userAnswer == q["answer"]) {
      print("✅ Correct!\n");
      score++;
    } else {
      print("❌ Wrong! The correct answer is option ${q["answer"]}.\n");
    }
  }

  print("🎉 Quiz Successully Completed!");
  print("Your final score is: $score out of ${quiz.length}");
}
