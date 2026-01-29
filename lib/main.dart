import 'package:flutter/material.dart';

void main() {
  runApp(const FocusFlowApp());
}

class FocusFlowApp extends StatelessWidget {
  const FocusFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FocusFlow',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showComingSoonMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Feature coming soon!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('FocusFlow'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to FocusFlow',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _showComingSoonMessage,
              icon: const Icon(Icons.task_alt),
              label: const Text('Tasks'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _showComingSoonMessage,
              icon: const Icon(Icons.timer),
              label: const Text('Focus Timer'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _showComingSoonMessage,
              icon: const Icon(Icons.analytics),
              label: const Text('Analytics'),
            ),
          ],
        ),
      ),
    );
  }
}
