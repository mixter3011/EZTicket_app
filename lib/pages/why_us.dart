import 'package:flutter/material.dart';
import 'package:ezticket/pages/wallet_page.dart';

class WhyUs extends StatelessWidget {
  const WhyUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WalletPage()),
            );
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 15.0, left: 70),
          child: Text(
            'Why Us',
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20.0, left: 15.0),
        children: const [
          Text(
            '✨ User-Centric: ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Enjoy a seamless ticketing experience with our intuitive platform.',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 25),
          Text(
            '🌐 Innovation: ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Stay ahead with cutting-edge features, adapting to the evolving NFT landscape.',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 25),
          Text(
            '🤝 Community Focus: ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Join a thriving ecosystem where users, organizers, and creators unite for shared growth.',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 25),
          Text(
            '🔥 Revolutionizing Events: ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Be part of an unstoppable community redefining how events are experienced through NFTs. 💪',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
