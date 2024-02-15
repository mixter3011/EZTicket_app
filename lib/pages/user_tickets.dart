import 'package:ezticket/pages/wallet_page.dart';
import 'package:flutter/material.dart';

class UserTickets extends StatelessWidget {
  const UserTickets({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const WalletPage()));
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'lib/assets/profile_image.jpg', // Replace with the actual path to your image
                    width: 200, // Adjust width as needed
                    height: 200, // Adjust height as needed
                    fit: BoxFit.cover, // Choose an appropriate BoxFit
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Account Address',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  '9472ddc40cc********a460782',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20.0),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 105, 255, 233),
                        Color.fromARGB(255, 38, 165, 211),
                      ],
                    ).createShader(bounds);
                  },
                  child: const Text(
                    'Your Tickets',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Set a default color for unsupported devices
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 140.0,
                  width: 380.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Text(
                      "  EVENT NAME: CAAR CONFERENCE 2024 \n  DATE: FEB 10 2024 \n  CHAIN ID: 7691053 \n ADDRESS:1FfmbHfnpaZjKFvyi1okTjJJusN4\n 55paPH",
                      style: TextStyle(
                        fontSize: 18, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                Container(
                  height: 140.0,
                  width: 380.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "  EVENT_NAME: ANNUAL_CAREER_FAIR \n  DATE: AUGUST_10_2024 \n  CHAIN_ID: 35895347 \n ADDRESS: n2tkvzzE1T2ZkkBiVVCnrrAEQcu\n WKNHozw",
                      style: TextStyle(
                        fontSize: 18, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                Container(
                  height: 140.0,
                  width: 380.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "  EVENT NAME: HACKATHON X MULTIVERSE \n  DATE: NOVEMBER 19 2024 \n  CHAIN ID: 27249460 \n ADDRESS:mkm9VcS5orY4gtKLVcQsxAy9jXC\n 3zpBxoL",
                      style: TextStyle(
                        fontSize: 18, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
