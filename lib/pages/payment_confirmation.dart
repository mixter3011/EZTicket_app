import 'package:ezticket/pages/wallet_page.dart';
import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( // Use Stack for background image and overlaying text
        children: [
          Center( // Center the text vertically and horizontally
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Align text and button vertically
              children: [
                const Text(
                  "    Your Transaction was Succesful!\n " "Your Ticket has been sent to your \n" "                        Wallet",
                  style: TextStyle(
                    fontSize: 24, // Adjust font size as needed
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(190, 0, 0, 0), // Ensure text is visible on background
                  ),
                ),
                const SizedBox(height: 50), // Add some spacing between text and button
                ElevatedButton(
                  onPressed: () {
                    // Handle button press (e.g., navigate to home page)
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WalletPage()),
                    ); // Assuming home page is the previous screen
                  },
                  child: const Text('Return to Home Page'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
