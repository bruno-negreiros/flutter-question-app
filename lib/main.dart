import 'package:flutter/material.dart';

main() {
  runApp(const QuestionApp());
}

class _QuestionAppState extends State<QuestionApp>{
  var _selectedQuestion = 0;

  void _toRespond(){
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    const List<String> questions = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas')
        ),
        body: Column(
          children: [
            Text(questions[_selectedQuestion]),
            ElevatedButton(
              onPressed: _toRespond,
              child: const Text('Resposta 1')
            ),
            ElevatedButton(
              onPressed: _toRespond,
              child: const Text('Resposta 2')
            ),
            ElevatedButton(
              onPressed: _toRespond,
              child: const Text('Resposta 3')
            )
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  State<QuestionApp> createState() => _QuestionAppState();

  const QuestionApp({ super.key });
}