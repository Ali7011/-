
import 'package:flutter/material.dart';

class MaintenanceProvider with ChangeNotifier {
  final List<Map<String, dynamic>> parts = [];

  void addPartDialog(BuildContext context) {
    final nameController = TextEditingController();
    final lifespanController = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Part'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Part Name'),
            ),
            TextField(
              controller: lifespanController,
              decoration: const InputDecoration(labelText: 'Lifespan (km)'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              final name = nameController.text;
              final lifespan = int.tryParse(lifespanController.text);
              if (name.isNotEmpty && lifespan != null) {
                parts.add({'name': name, 'lifespan': lifespan, 'remaining': lifespan});
                notifyListeners();
              }
              Navigator.of(ctx).pop();
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
    