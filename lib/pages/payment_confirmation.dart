import 'package:ezticket/pages/wallet_page.dart';
import 'package:flutter/material.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( 
        children: [
          Center( 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                const Text(
                  "    Your Transaction was Succesful!\n " "Your Ticket has been sent to your \n" "                        Wallet",
                  style: TextStyle(
                    fontSize: 24, 
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(190, 0, 0, 0), 
                  ),
                ),
                const SizedBox(height: 50), 
                ElevatedButton(
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WalletPage()),
                    ); 
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
