import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background wave image with translucency
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0), // Optional: Apply blur for additional effect
              child: Image.asset(
                'lib/assets/wave.png', // Replace with the path to your wave image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content (Seatlabnft image and text fields)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Seatlabnft image
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.7),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(
                    'lib/assets/Seatlabnft.png', // Replace with the path to your Seatlabnft image
                    width: 250,
                    height: 250,
                  ),
                ),
                
                const SizedBox(height: 30), // Add some space between image and text fields

                // Welcome Text
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "Welcome to ",
                          ),
                          TextSpan(
                            text: "EZTicket",
                            style: TextStyle(
                              color: Color.fromARGB(255, 224, 142, 205), // Change the color of "EZTicket"
                            ),
                          ),
                          TextSpan(
                            text: " A One Stop Destination for all your Event needs",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),
                // Username text field
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0), // Add some space between text fields
                // Password text field
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
