import 'package:flutter/material.dart';
import 'package:mobile/app/modules/home/views/login.dart';

class Success extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Menghilangkan default back button
        backgroundColor: Colors.white,
        elevation: 0, // Hilangkan shadow pada AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Tombol anak panah
          onPressed: () {
            Navigator.pop(context); // Aksi untuk kembali ke layar sebelumnya
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Aksi untuk Sign Up jika ada
            },
            child: Text(
              'Sign Up!',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
              width: 95,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Doi_Coffee_JPEG.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your Password Has Been Successfully Changed',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Icon(
              Icons.check_circle,
              size: 80,
              color: Colors.black,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Warna tombol
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {
                
                // Navigasi ke layar berikutnya
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()), // Ganti dengan layar selanjutnya
                );
              },
              child: Text(
                'Back To Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
