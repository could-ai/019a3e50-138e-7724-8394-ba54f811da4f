import 'package:couldai_user_app/models/lesson_model.dart';
import 'package:flutter/material.dart';

class LessonViewScreen extends StatelessWidget {
  final Lesson lesson;
  final Color color;

  const LessonViewScreen({super.key, required this.lesson, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Placeholder for the image
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: color, width: 3),
                ),
                child: Center(
                  child: Icon(lesson.icon, size: 150, color: color),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                lesson.name.toUpperCase(),
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  // TODO: Implement text-to-speech pronunciation
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Pronouncing: ${lesson.name}"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                icon: const Icon(Icons.volume_up, size: 30),
                label: const Text('Listen', style: TextStyle(fontSize: 22)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
