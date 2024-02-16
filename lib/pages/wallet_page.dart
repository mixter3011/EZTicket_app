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
              // Add functionality when the profile picture icon is pressed
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
          Container(
            margin: const EdgeInsets.only(left: 30, right: 1.0),
            width: 290,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color.fromARGB(80, 235, 191, 255),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 240.0),
              child: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Add functionality when the search icon is pressed
                },
              ),
            ),
          ),
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
                leading: const Icon(Icons.exit_to_app, color: Color.fromARGB(255, 0, 0, 0)),
                title: const Text('L O G O U T', style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
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
                leading: const Icon(Icons.confirmation_num_outlined, color: Color.fromARGB(255, 0, 0, 0)),
                title: const Text('Y O U R  T I C K E T S', style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
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
                leading: const Icon(Icons.add_card_outlined, color: Color.fromARGB(255, 0, 0, 0)),
                title: const Text('T R A N S A C T I O N', style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
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
                leading: const Icon(Icons.account_tree_outlined, color: Color.fromARGB(255, 0, 0, 0)),
                title: const Text('W H Y   U S ', style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/wave.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 229, 140, 235),
                                  Color.fromARGB(255, 33, 148, 146),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds);
                            },
                            child: const Text(
                              'Explore',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.account_balance_wallet,
                                color: Color.fromARGB(255, 150, 129, 212),
                                size: 30,
                              ),
                              const SizedBox(width: 5),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '5.2',
                                      style: TextStyle(
                                        foreground: Paint()
                                          ..shader = const LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 105, 255, 233),
                                              Color.fromARGB(255, 38, 165, 211),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(const Rect.fromLTWH(
                                              0.0, 0.0, 200.0, 70.0)),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const TextSpan(
                                      text: '  ',
                                    ),
                                    TextSpan(
                                      text: 'ETH',
                                      style: TextStyle(
                                        foreground: Paint()
                                          ..shader = const LinearGradient(
                                            colors: [
                                              Color.fromARGB(255, 255, 125, 166),
                                              Color.fromARGB(255, 235, 101, 228),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(const Rect.fromLTWH(
                                              0.0, 0.0, 200.0, 70.0)),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
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
                      // Square Carousel with 5 transparent items and glass effect
                      SizedBox(
                        height: 400,
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
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 229, 140, 235),
                              Color.fromARGB(255, 33, 148, 146),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds);
                        },
                        child: const Text(
                          "Get Tickets",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
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
                                          // Set your desired color here
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
        child: Icon(Icons.chat),
      ),
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
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white.withOpacity(0.2),
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

  // Function to show assistance dialog
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

  // Define a map to store predefined responses for specific queries
  final Map<String, String> predefinedResponses = {
    'What is NFT': 'NFT means non-fungible tokens (NFTs), which are generally created using the same type of programming used for cryptocurrencies. In simple terms, these cryptographic assets are based on blockchain technology. They cannot be exchanged or traded equivalently like other cryptographic assets.',
    'What is blockchain': 'A blockchain is a decentralized, distributed and public digital ledger that is used to record transactions across many computers so that the record cannot be altered retroactively without the alteration of all subsequent blocks and the consensus of the network.',
    // Add more predefined responses as needed
  };

  void _handleSubmission() {
    // Process the user's input
    String userQuery = _textFieldController.text;
    
    // Look for predefined responses
    String response = predefinedResponses[userQuery] ?? 'I am not sure how to respond to that.';

    // Update the botResponse state to display the response
    setState(() {
      botResponse = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('How may I assist you?'),
      content: Column(
        children: [
          TextField(
            controller: _textFieldController,
            decoration: InputDecoration(labelText: 'Your question or request'),
          ),
          SizedBox(height: 10),
          if (botResponse.isNotEmpty)
            Text(
              'Bot: $botResponse',
              style: TextStyle(
                color: Colors.green,  // Adjust the color as needed
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
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _handleSubmission,
          child: Text('Submit'),
        ),
      ],
    );
  }
}
