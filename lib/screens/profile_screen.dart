import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/info_row.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Latihan 3: Penggunaan Expanded untuk mengisi ruang utama
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      // Latihan 4: Widget ProfileHeader
                      ProfileHeader(
                        name: 'Mohamad Noval',
                        nim: '25.11.6327',
                      ),
                      SizedBox(height: 16),
                      Divider(),
                      SizedBox(height: 8),
                      InfoRow(
                        icon: Icons.school,
                        label: 'S1 Informatika',
                      ),
                      InfoRow(
                        icon: Icons.email,
                        label: 'm.noval@students.amikom.ac.id',
                      ),
                      InfoRow(
                        icon: Icons.location_on,
                        label: 'Yogyakarta, Indonesia',
                      ),
                      SizedBox(height: 16),
                      // Latihan 1: Widget SocialMediaRow
                      SocialMediaRow(),
                    ],
                  ),
                ),
              ),
              // Latihan 4 & Latihan 3: Widget ActionButtons di bagian bawah
              const ActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}