import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Welcome back!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Here’s what you can do:',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // later: navigate to Add Meal page
              },
              child: const Text('Add Meal'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                // later: navigate to Add Symptom page
              },
              child: const Text('Add Symptom'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                // later: navigate to Reports page
              },
              child: const Text('View Reports'),
            ),
          ],
        ),
      ),
    );
  }
}
