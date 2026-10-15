import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: const Color.fromARGB(255, 1, 58, 39),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: const [
          // 1. Bagian Atas: Header Profil (Foto + Info) + Sosmed
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ProfileHeader(), // Widget Refactoring 1
                    SizedBox(height: 16),
                    SocialMediaRow(), // Widget Latihan 1
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),

          // 2. Bagian Bawah: Tombol Aksi
          Flexible(
            flex: 1,
            child: ActionButtons(), // Widget Refactoring 2
          ),
        ],
      ),
    );
  }
}