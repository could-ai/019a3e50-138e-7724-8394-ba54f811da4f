import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final IconData icon;
  final Color color;

  Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
  });
}

// Sample Data
List<Category> categories = [
  Category(id: 'c1', name: 'Alphabet', icon: Icons.sort_by_alpha, color: Colors.orange),
  Category(id: 'c2', name: 'Numbers', icon: Icons.format_list_numbered, color: Colors.blue),
  Category(id: 'c3', name: 'Animals', icon: Icons.pets, color: Colors.green),
  Category(id: 'c4', name: 'Colors', icon: Icons.color_lens, color: Colors.purple),
  Category(id: 'c5', name: 'Fruits', icon: Icons.apple, color: Colors.red),
  Category(id: 'c6', name: 'Shapes', icon: Icons.category, color: Colors.teal),
];
