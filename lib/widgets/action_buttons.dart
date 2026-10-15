import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tombol Edit Diklik')),
              );
            },
            icon: const Icon(Icons.edit),
            label: const Text('Edit'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tombol Bagikan Diklik')),
              );
            },
            icon: const Icon(Icons.share),
            label: const Text('Bagikan'),
          ),
        ],
      ),
    );
  }
}