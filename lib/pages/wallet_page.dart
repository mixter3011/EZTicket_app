import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ezticket/components/my_bottom_bar.dart';
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 81, 131, 181),
                    Color.fromARGB(255, 90, 83, 132),
                  ],
                ),
              ),
              child: Text(
                'User Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.black),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'lib/assets/wave.png', // Replace 'lib/assets/bg.png' with the actual path to your background image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            child: Center(
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
                        SizedBox(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              5,
                              (index) => Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 4.0),
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
}
