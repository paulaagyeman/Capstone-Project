import 'package:flutter/material.dart';

class AddMealScreen extends StatefulWidget {
  const AddMealScreen({super.key});

  @override
  State<AddMealScreen> createState() => _AddMealScreenState();
}

class _AddMealScreenState extends State<AddMealScreen> {
  final TextEditingController _mealController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  String _selectedCategory = 'Dairy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        title: const Text('Add Meal'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Meal Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _mealController,
                decoration: const InputDecoration(hintText: 'e.g. Chicken Alfredo'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Category',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                dropdownColor: const Color(0xFF1E1E1E),
                value: _selectedCategory,
                decoration: const InputDecoration(),
                items: ['Dairy', 'Gluten', 'Nuts', 'Seafood', 'Other']
                    .map((category) => DropdownMenuItem(
                          value: category,
                          child: Text(category),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Notes',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _notesController,
                maxLines: 3,
                decoration: const InputDecoration(
                  hintText: 'Add any notes or symptoms...',
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    final mealName = _mealController.text;
                    final category = _selectedCategory;
                    final notes = _notesController.text;

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Saved meal: $mealName ($category)\nNotes: $notes'),
                        backgroundColor: Colors.greenAccent[400],
                      ),
                    );

                    _mealController.clear();
                    _notesController.clear();
                  },
                  child: const Text('Save Meal'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
