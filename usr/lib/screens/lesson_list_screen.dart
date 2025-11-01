import 'package:couldai_user_app/models/category_model.dart';
import 'package:couldai_user_app/models/lesson_model.dart';
import 'package:couldai_user_app/screens/lesson_view_screen.dart';
import 'package:couldai_user_app/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class LessonListScreen extends StatelessWidget {
  final Category category;
  const LessonListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Filter lessons based on the selected category
    final categoryLessons = lessons.where((lesson) => lesson.categoryId == category.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: category.color,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: categoryLessons.length,
        itemBuilder: (context, index) {
          final lesson = categoryLessons[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: Icon(lesson.icon, color: category.color, size: 40),
              title: Text(lesson.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LessonViewScreen(lesson: lesson, color: category.color),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizScreen(category: category),
              ),
            );
        },
        label: const Text('Start Quiz!', style: TextStyle(fontWeight: FontWeight.bold)),
        icon: const Icon(Icons.quiz),
        backgroundColor: category.color,
        foregroundColor: Colors.white,
      ),
    );
  }
}
