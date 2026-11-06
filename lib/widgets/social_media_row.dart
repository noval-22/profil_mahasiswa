import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Membuka $platform'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt), // Instagram alternative icon
          color: Colors.purple,
          iconSize: 32,
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.work), // LinkedIn alternative icon
          color: Colors.blue[700],
          iconSize: 32,
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.code), // GitHub alternative icon
          color: Colors.black,
          iconSize: 32,
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}