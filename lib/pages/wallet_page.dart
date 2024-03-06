import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ezticket/components/my_bottom_bar.dart';
import 'package:ezticket/pages/login_page.dart';
import 'package:ezticket/pages/payment_page.dart';
import 'package:ezticket/pages/transaction_history.dart';
import 'package:ezticket/pages/user_tickets.dart';
import 'package:ezticket/pages/why_us.dart';
import 'package:ezticket/themes/glassbox.dart';
import 'package:flutter/material.dart';

class WalletIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('lib/assets/profile_image.jpg'),
              radius: 20.0,
            ),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int _currentBottomIndex = 0;

  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          WalletIcon(),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white.withOpacity(0.8),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey.withOpacity(0.5),
                    Colors.grey.withOpacity(0.1),
                  ],
                ),
                border: const Border(bottom: BorderSide.none),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Image.asset('lib/assets/Seatlabnft.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 15.0),
              child: ListTile(
                leading: const Icon(Icons.exit_to_app, color: Colors.black), // Change text color to black
                title: const Text('L O G O U T', style: TextStyle(fontSize: 18, color: Colors.black)), // Change text color to black
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: ListTile(
                leading: const Icon(Icons.confirmation_num_outlined, color: Colors.black), // Change text color to black
                title: const Text('Y O U R  T I C K E T S', style: TextStyle(fontSize: 18, color: Colors.black)), // Change text color to black
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserTickets()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: ListTile(
                leading: const Icon(Icons.add_card_outlined, color: Colors.black), // Change text color to black
                title: const Text('T R A N S A C T I O N', style: TextStyle(fontSize: 18, color: Colors.black)), // Change text color to black
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TransactionHistory()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: ListTile(
                leading: const Icon(Icons.account_tree_outlined, color: Colors.black), // Change text color to black
                title: const Text('W H Y   U S ', style: TextStyle(fontSize: 18, color: Colors.black)), // Change text color to black
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WhyUs()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          _buildBackgroundImage(),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Explore',
                              style: TextStyle(
                                fontSize: 50,
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.account_balance_wallet,
                                  color: Color.fromARGB(255, 213, 204, 243),
                                  size: 25,
                                ),
                                SizedBox(width: 5),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '5.2',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  ',
                                      ),
                                      TextSpan(
                                        text: 'ETH',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          height: 450,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              aspectRatio: 1.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                            ),
                            items: [
                              _buildGlassEffectImage('lib/assets/conference.jpg'),
                              _buildGlassEffectImage('lib/assets/fair.png'),
                              _buildGlassEffectImage('lib/assets/makeathon.jpg'),
                              _buildGlassEffectImage('lib/assets/meetup.jpeg'),
                              _buildGlassEffectImage('lib/assets/tech_talk.jpg'),
                              // Add more items as needed
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Get Tickets",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          children: List.generate(
                            5,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 120,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: _buildTicketItem(index),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 200.0, bottom: 10.0),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const Payment()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color.fromARGB(150, 144, 99, 240),
                                          ),
                                          child: const Text(
                                            'Book Now : 2 ETH',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: GlassBox(
        child: MyBottomBar(
          index: _currentBottomIndex,
          onTap: _handleBottomIndexChange,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAssistanceDialog(context);
        },
        tooltip: 'Chatbot',
        child: const Icon(Icons.chat),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Image.asset(
      'lib/assets/bg2.png', 
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _buildGlassEffectImage(String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white.withOpacity(0.5),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTicketItem(int index) {
    String imagePath;
    switch (index) {
      case 0:
        imagePath = 'lib/assets/conference_ticekt.jpg';
        break;
      case 1:
        imagePath = 'lib/assets/fair_ticket.jpg';
        break;
      case 2:
        imagePath = 'lib/assets/hackathon_ticket.jpeg';
        break;
      case 3:
        imagePath = 'lib/assets/marketing_event_ticket.jpg';
        break;
      case 4:
        imagePath = 'lib/assets/tech_talk_ticket.png';
        break;
      default:
        imagePath = '';
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }

  void _showAssistanceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ChatBotDialog();
      },
    );
  }
}

class ChatBotDialog extends StatefulWidget {
  @override
  _ChatBotDialogState createState() => _ChatBotDialogState();
}

class _ChatBotDialogState extends State<ChatBotDialog> {
  TextEditingController _textFieldController = TextEditingController();
  String botResponse = '';


  final Map<String, String> predefinedResponses = {
    'What is NFT': 'NFT means non-fungible tokens (NFTs), which are generally created using the same type of programming used for cryptocurrencies. In simple terms, these cryptographic assets are based on blockchain technology. They cannot be exchanged or traded equivalently like other cryptographic assets.',
    'What is blockchain': 'A blockchain is a decentralized, distributed and public digital ledger that is used to record transactions across many computers so that the record cannot be altered retroactively without the alteration of all subsequent blocks and the consensus of the network.',
  };

  void _handleSubmission() {
    String userQuery = _textFieldController.text;

    String response = predefinedResponses[userQuery] ?? 'I am not sure how to respond to that.';

    setState(() {
      botResponse = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('How may I assist you?'),
      content: Column(
        children: [
          TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(labelText: 'Your question or request'),
          ),
          const SizedBox(height: 10),
          if (botResponse.isNotEmpty)
            Text(
              'Bot: $botResponse',
              style: const TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _handleSubmission,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
