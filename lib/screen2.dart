import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_data.dart';

class Screen2 extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(hintText: 'Enter name'),
            ),
            TextField(
              controller: _ageController,
              decoration: const InputDecoration(hintText: 'Enter age'),
            ),
            ElevatedButton(
              onPressed: () {
                final userData = context.read<UserData>();
                userData.updateData(
                  _nameController.text,
                  int.parse(_ageController.text),
                );
                Navigator.pop(context);
              },
              child: const Text('Update Data'),
            ),
          ],
        ),
      ),
    );
  }
}