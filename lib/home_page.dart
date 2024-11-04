// lib/pages/home_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic material design layout structure
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the content
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            // 1. Burgan Bank Logo
            Image.asset(
              'assets/images/burgan_logo.png',
              width: 150, // Adjust size as needed
              height: 150,
            ),
            SizedBox(height: 24), // Space between logo and description

            // 2. Bank Description
            Text(
              'Welcome to Burgan Bank!\nYour trusted partner in financial services.',
              textAlign: TextAlign.center, // Center the text
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500, // Medium weight
              ),
            ),
            SizedBox(height: 32), // Space between description and button

            // 3. Explore Branches Button
            ElevatedButton(
              onPressed: () {
                // Navigate to Branch List Page
                context.goNamed('branchList');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink, // Button color
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text('Explore Branches'),
            ),
          ],
        ),
      ),
    );
  }
}

