import 'package:flutter/material.dart';
import 'profile_photo.dart';
import 'profile_info.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 24),
        ProfilePhoto(radius: 60),
        SizedBox(height: 24),
        ProfileInfo(
          name: 'Amrizal Adit Saputra',
          nim: '25.11.6559',
          programStudi: 'S1 Informatika',
          email: 'adit@students.amikom.ac.id',
          lokasi: 'Yogyakarta, Indonesia',
        ),
      ],
    );
  }
}