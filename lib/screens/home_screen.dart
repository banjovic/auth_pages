import 'package:auth_pages/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String userIdentifier;

  const HomePage({Key? key, required this.userIdentifier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff881736), Color(0xff281537)],
          ),
        ),
        child: Column(
          children: [
            const Padding(padding: const EdgeInsets.only(top: 200)),
            SizedBox(height: 200),
            Text(
              'Hello, $userIdentifier!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
