
import 'package:flutter/material.dart';
import '../widgets/part_item.dart';
import '../providers/maintenance_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MaintenanceProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Maintenance'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              provider.addPartDialog(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: provider.parts.length,
        itemBuilder: (ctx, i) => PartItem(part: provider.parts[i]),
      ),
    );
  }
}
    