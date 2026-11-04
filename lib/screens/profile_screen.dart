import 'package:flutter/material.dart';

// --- DIUBAH: Hapus import widget lama, ganti dengan memanggil 3 widget baru ini ---
import '../widgets/profile_header.dart';
import '../widgets/action_buttons.dart';
import '../widgets/social_media_row.dart';
// ----------------------------------------------------------------------------------

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
      
      // --- DIUBAH: Dulu langsung SingleChildScrollView, sekarang dibungkus Column ---
      body: Column( 
        children: [
          
          // --- DITAMBAHKAN: Widget Expanded untuk area atas (Latihan 3) ---
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 24),
                  
                  // --- DIUBAH: Kode foto & info yang panjang diganti jadi 1 baris ini (Latihan 4) ---
                  ProfileHeader(), 
                  
                  SizedBox(height: 24),
                  
                  // --- DITAMBAHKAN: Memanggil widget ikon sosmed baru (Latihan 1) ---
                  SocialMediaRow(), 
                ],
              ),
            ),
          ),

          // --- DITAMBAHKAN: Widget Flexible untuk area tombol di bawah (Latihan 3) ---
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              
              // --- DIUBAH: Kode Row tombol yang panjang diganti jadi 1 baris ini (Latihan 4) ---
              child: const ActionButtons(), 
            ),
          ),
          
        ],
      ),
    );
  }
}