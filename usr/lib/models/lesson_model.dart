import 'package:flutter/material.dart';

class Lesson {
  final String id;
  final String categoryId;
  final String name;
  final IconData icon; // Placeholder for image

  Lesson({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.icon,
  });
}

// Sample Data
List<Lesson> lessons = [
  // Animals
  Lesson(id: 'l1', categoryId: 'c3', name: 'Lion', icon: Icons.android), // Placeholder icon
  Lesson(id: 'l2', categoryId: 'c3', name: 'Elephant', icon: Icons.android),
  Lesson(id: 'l3', categoryId: 'c3', name: 'Monkey', icon: Icons.android),
  // Numbers
  Lesson(id: 'l4', categoryId: 'c2', name: 'One', icon: Icons.looks_one),
  Lesson(id: 'l5', categoryId: 'c2', name: 'Two', icon: Icons.looks_two),
  Lesson(id: 'l6', categoryId: 'c2', name: 'Three', icon: Icons.looks_3),
  // Alphabet
  Lesson(id: 'l7', categoryId: 'c1', name: 'A', icon: Icons.abc),
  Lesson(id: 'l8', categoryId: 'c1', name: 'B', icon: Icons.abc),
  Lesson(id: 'l9', categoryId: 'c1', name: 'C', icon: Icons.abc),
   // Colors
  Lesson(id: 'l10', categoryId: 'c4', name: 'Red', icon: Icons.circle),
  Lesson(id: 'l11', categoryId: 'c4', name: 'Green', icon: Icons.circle),
  Lesson(id: 'l12', categoryId: 'c4', name: 'Blue', icon: Icons.circle),
   // Fruits
  Lesson(id: 'l13', categoryId: 'c5', name: 'Apple', icon: Icons.apple),
  Lesson(id: 'l14', categoryId: 'c5', name: 'Banana', icon: Icons.android),
  Lesson(id: 'l15', categoryId: 'c5', name: 'Orange', icon: Icons.android),
   // Shapes
  Lesson(id: 'l16', categoryId: 'c6', name: 'Circle', icon: Icons.circle_outlined),
  Lesson(id: 'l17', categoryId: 'c6', name: 'Square', icon: Icons.square_outlined),
  Lesson(id: 'l18', categoryId: 'c6', name: 'Triangle', icon: Icons.change_history),
];
