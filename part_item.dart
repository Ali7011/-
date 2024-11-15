
import 'package:flutter/material.dart';

class PartItem extends StatelessWidget {
  final Map<String, dynamic> part;

  const PartItem({Key? key, required this.part}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(part['name']),
      subtitle: Text('Remaining: ${part['remaining']} km'),
      trailing: part['remaining'] <= 0
          ? const Icon(Icons.warning, color: Colors.red)
          : null,
    );
  }
}
    