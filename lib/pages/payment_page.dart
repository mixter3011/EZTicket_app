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
                  padding: const EdgeInsets.only(bottom: 30.0), 
                  child: Image.asset(
                    'lib/assets/pic.png', 
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10.0), 

                Column(
                  children: [
                    SizedBox(
                      width: 250.0, 
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '         Enter Security Code     ',
                          hintStyle: TextStyle(color: Colors.blue[100]), 
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onChanged: (text) {
                          if (text.isNotEmpty) {
                          }
                        },
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 50.0), 

                    
                    SizedBox(
                      width: 250.0, 
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Confirmation()),
                          );
                        },
                        child: const Text('Pay 2 ETH'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Positioned(
            top: 20.0,             right: 20.0, 
            child: CircleAvatar(
              radius: 30.0, 
              backgroundImage: AssetImage(
                  'lib/assets/profile_image.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
