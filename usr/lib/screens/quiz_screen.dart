import 'package:couldai_user_app/models/category_model.dart';
import 'package:couldai_user_app/models/quiz_model.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  final Category category;
  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<QuizQuestion> _questions;
  int _currentQuestionIndex = 0;
  int _score = 0;
  String? _selectedAnswer;
  bool _isAnswered = false;

  @override
  void initState() {
    super.initState();
    _questions = quizQuestions.where((q) => q.categoryId == widget.category.id).toList();
    _questions.shuffle(); // Randomize question order
  }

  void _answerQuestion(String answer) {
    if (_isAnswered) return;

    setState(() {
      _selectedAnswer = answer;
      _isAnswered = true;
      if (answer == _questions[_currentQuestionIndex].correctAnswer) {
        _score++;
      }
    });

    Future.delayed(const Duration(seconds: 2), () {
      _nextQuestion();
    });
  }

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
        _selectedAnswer = null;
        _isAnswered = false;
      } else {
        // Quiz finished
        _showResultDialog();
      }
    });
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Quiz Finished!'),
        content: Text('Your score is $_score out of ${_questions.length}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
              Navigator.of(context).pop(); // Go back to lesson list
            },
            child: const Text('Great!'),
          ),
        ],
      ),
    );
  }

  Color _getButtonColor(String option) {
    if (!_isAnswered) {
      return Colors.white;
    }
    if (option == _questions[_currentQuestionIndex].correctAnswer) {
      return Colors.green.shade200;
    }
    if (option == _selectedAnswer) {
      return Colors.red.shade200;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text('${widget.category.name} Quiz')),
        body: const Center(child: Text('No quiz available for this category yet!')),
      );
    }

    final currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category.name} Quiz'),
        backgroundColor: widget.category.color,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${_currentQuestionIndex + 1}/${_questions.length}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: widget.category.color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                   Icon(currentQuestion.questionIcon, size: 80, color: widget.category.color),
                   const SizedBox(height: 20),
                   Text(
                    currentQuestion.questionText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.options.map((option) {
              return Card(
                elevation: 3,
                color: _getButtonColor(option),
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: InkWell(
                  onTap: () => _answerQuestion(option),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        option,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
             const Spacer(),
            Text(
              'Score: $_score',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: widget.category.color),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
