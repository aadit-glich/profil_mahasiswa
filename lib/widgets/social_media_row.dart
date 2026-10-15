import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt), // Menggunakan ikon bawaan flutter sebagai pengganti logo IG
          color: Colors.pink,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Membuka Instagram...')),
            );
          },
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.work), // Menggunakan ikon bawaan flutter sebagai pengganti logo LinkedIn
          color: Colors.blue,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Membuka LinkedIn...')),
            );
          },
        ),
        const SizedBox(width: 16),
        IconButton(
          icon: const Icon(Icons.code), // Menggunakan ikon bawaan flutter sebagai pengganti logo GitHub
          color: Colors.black,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Membuka GitHub...')),
            );
          },
        ),
      ],
    );
  }
}