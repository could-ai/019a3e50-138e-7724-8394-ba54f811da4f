
import 'package:flutter/material.dart';

class QuizQuestion {
  final String categoryId;
  final String questionText;
  final List<String> options;
  final String correctAnswer;
  // In a real app, this would be an image path
  final IconData questionIcon; 

  QuizQuestion({
    required this.categoryId,
    required this.questionText,
    required this.options,
    required this.correctAnswer,
    required this.questionIcon,
  });
}

List<QuizQuestion> quizQuestions = [
  // Animals Quiz
  QuizQuestion(
    categoryId: 'c3',
    questionText: 'Which one is the Lion?',
    questionIcon: Icons.pets, // Placeholder
    options: ['Lion', 'Elephant', 'Monkey', 'Apple'],
    correctAnswer: 'Lion',
  ),
  QuizQuestion(
    categoryId: 'c3',
    questionText: 'Which animal is very big?',
    questionIcon: Icons.pets, // Placeholder
    options: ['Monkey', 'Elephant', 'Lion', 'Banana'],
    correctAnswer: 'Elephant',
  ),
  // Numbers Quiz
  QuizQuestion(
    categoryId: 'c2',
    questionText: 'What is this number?',
    questionIcon: Icons.looks_3,
    options: ['One', 'Two', 'Three', 'Four'],
    correctAnswer: 'Three',
  ),
  QuizQuestion(
    categoryId: 'c2',
    questionText: 'What comes after One?',
    questionIcon: Icons.looks_two,
    options: ['Three', 'Two', 'Five', 'Six'],
    correctAnswer: 'Two',
  ),
  // Alphabet Quiz
  QuizQuestion(
    categoryId: 'c1',
    questionText: 'What is the first letter?',
    questionIcon: Icons.abc,
    options: ['C', 'B', 'A', 'D'],
    correctAnswer: 'A',
  ),
  // Colors Quiz
  QuizQuestion(
    categoryId: 'c4',
    questionText: 'What color is an apple?',
    questionIcon: Icons.apple,
    options: ['Blue', 'Green', 'Red', 'Purple'],
    correctAnswer: 'Red',
  ),
  // Fruits Quiz
  QuizQuestion(
    categoryId: 'c5',
    questionText: 'Which one is a fruit?',
    questionIcon: Icons.fastfood,
    options: ['Circle', 'Banana', 'Square', 'Lion'],
    correctAnswer: 'Banana',
  ),
  // Shapes Quiz
  QuizQuestion(
    categoryId: 'c6',
    questionText: 'Which shape is round?',
    questionIcon: Icons.category,
    options: ['Square', 'Triangle', 'Circle', 'Star'],
    correctAnswer: 'Circle',
  ),
];
