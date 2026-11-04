// --- DITAMBAHKAN: File baru untuk Latihan 1 (Deretan Ikon Sosmed) ---
import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Anda mengklik $platform')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt),
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.work),
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.code),
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}