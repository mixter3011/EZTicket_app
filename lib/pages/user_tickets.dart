import 'package:ezticket/pages/wallet_page.dart';
import 'package:flutter/material.dart';

class UserTickets extends StatelessWidget {
  const UserTickets({super.key});

  void _showTiektDetails(BuildContext context, String eventname, String date, String chainId, String address){
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text(eventname),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('DATE: $date'),
            Text('CHAIN ID: $chainId'),
            Text('ADDRESS: $address'),
          ],
        ),
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: const Text("Close"),
         ),
        ],
      );
    },
   );
  }

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
        actions: [
          Padding(padding: const EdgeInsets.only(top: 20.0, right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              'lib/assets/pic.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
         ),
        ],
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
                    'lib/assets/profile_image.jpg', 
                    width: 200, 
                    height: 200, 
                    fit: BoxFit.cover, 
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
                      color: Colors.white, 
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    _showTiektDetails(
                      context, 
                      'CXR CONFERENCE 2024', 
                      'FEB 10 2024', 
                      '7691053', 
                      'n2tkvzz********WKNHozw');
                  },
                  child: Container(
                    height: 140.0,
                    width: 380.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      'lib/assets/ticket.png',
                      width: 500,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                GestureDetector(
                  onTap: () {
                    _showTiektDetails(
                      context, 
                      'ANNUAL_CAREER_FAIR', 
                      'AUGUST_10_2024', 
                      '35895347', 
                      'n2tkvzz********WKNHozw');
                  },
                  child: Container(
                    height: 140.0,
                    width: 380.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      'lib/assets/ticket.png',
                      width: 500,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                GestureDetector(
                  onTap: () {
                    _showTiektDetails(
                      context, 
                      'HACKATHON X MULTIVERSE', 
                      'NOVEMBER 19 2024', 
                      '27249460', 
                      'mkm9VcS5*******3zpBxoL');
                  },
                  child: Container(
                    height: 140.0,
                    width: 380.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Image.asset(
                      'lib/assets/ticket.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
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
