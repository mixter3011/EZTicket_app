import 'package:ezticket/pages/payment_confirmation.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0), // Adjust padding for image position
                  child: Image.asset(
                    'lib/assets/pic.png', // Replace with your image path
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10.0), // Add spacing between image and text fields

                Column(
                  children: [
                    SizedBox(
                      width: 250.0, // Adjust width as needed
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '         Enter Security Code     ',
                          hintStyle: TextStyle(color: Colors.blue[100]), // Lighter hint text color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onChanged: (text) {
                          if (text.isNotEmpty) {
                            // Hide hint text and obscure text
                          }
                        },
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 50.0), // Add spacing between text field and button

                    // Added Pay button:
                    SizedBox(
                      width: 250.0, // Adjust width as needed
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Confirmation()),
                          );
                          print('Pay button pressed!');
                        },
                        child: Text('Pay 2 ETH'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 20.0, // Adjust top position as needed
            right: 20.0, // Adjust right position as needed
            child: CircleAvatar(
              radius: 30.0, // Adjust radius as needed
              backgroundImage: AssetImage(
                  'lib/assets/profile_image.jpg'), // Replace with your PFP image path
            ),
          ),
        ],
      ),
    );
  }
}
