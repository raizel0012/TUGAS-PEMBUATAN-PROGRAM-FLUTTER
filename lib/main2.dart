import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gambar',
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Image & Column'),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: double.infinity,  // Mengatur lebar sesuai dengan lebar container
                      height: 200,  // Membatasi tinggi gambar
                      child: Image.asset(
                        'assets/images/my_image.jpg',
                        fit: BoxFit.cover,  // Mengatur gambar untuk mengisi area yang tersedia tanpa merusak proporsi
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    '11 Oktober 2022, 15:30 WIB',
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Buat Website hanya 7 menit dengan plugin ini!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Sekarang buat website cukup hitungan menit kami Tenang, '
                        'kami akan memandu Anda mengikuti semua langkah-langkahnya '
                        'dengan penjelasan yang lengkap dan gampang diikuti. Anda juga '
                        'tidak perlu khawatir dengan hal-hal teknisnya, karena semuanya '
                        'bisa Anda lakukan tanpa coding!',
                    style: TextStyle(fontSize: 14, height: 1.5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
