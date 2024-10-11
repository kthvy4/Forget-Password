import 'package:flutter/material.dart';
import 'package:mobile/app/modules/ForgetPass/views/ForgetPass_page.dart';

class LoginView extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Teks instruksi
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                 //aksi ke sign up
                  },
                  child: Text(
                    'Sign Up!',
                   style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
              Container(
              width: 95,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../../../../assets/images/Doi_Coffee_JPEG.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 40),
          
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),

              // Username TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
              SizedBox(height: 20),

              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
              ),
              SizedBox(height: 30),

              // Continue Button
              ElevatedButton(
                onPressed: () {
                  // Add login action here
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.black,
                ),
                child: Text(
                  'Continue',
                 style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),

              SizedBox(height: 20),

              // Forget Password Button
              TextButton(
                onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgetPassword()),
                  );
                },
                child: Text('Forget Password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}