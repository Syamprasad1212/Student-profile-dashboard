import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentProfilePage(),
    );
  }
}

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Profile'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            // Student Details
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: const Text('Syam'),
                subtitle: const Text(
                  'Department: Computer Science\nYear: 3rd Year',
                ),
              ),
            ),

            // Skills
            const Text(
              'My Skills',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            skill('Flutter'),
            skill('Java'),
            skill('C++'),
            skill('Python'),
            skill('Supabase'),

            // Achievements
            const Text(
              'My Achievements',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            achievement('Leetcode 200-Day Streak'),
            achievement('Spark Tank Hackathon Winner'),
            achievement('Morse Code Hackathon Winner'),
          ],
        ),
      ),
    );
  }

  // Skill Widget
  Widget skill(String name) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.check_circle, color: Colors.green),
        title: Text(name),
      ),
    );
  }

  // Achievement Widget
  Widget achievement(String name) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.emoji_events, color: Colors.orange),
        title: Text(name),
      ),
    );
  }
}
