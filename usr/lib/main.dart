import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Exam',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Exam Platform',
          style: TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // TODO: Implement Dashboard navigation
            },
            child: const Text('Dashboard', style: TextStyle(color: Colors.black87)),
          ),
          const SizedBox(width: 20),
          TextButton(
            onPressed: () {
              // TODO: Implement Profile navigation
            },
            child: const Text('Profile', style: TextStyle(color: Colors.black87)),
          ),
          const SizedBox(width: 20),
          TextButton(
            onPressed: () {
              // TODO: Implement Score navigation
            },
            child: const Text('Score', style: TextStyle(color: Colors.black87)),
          ),
          const SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextButton(
              onPressed: () {
                // TODO: Implement Sign Out
              },
              child: const Text('Sign Out', style: TextStyle(color: Colors.redAccent)),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Your Online Exam!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Select an option from the top right to get started.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
