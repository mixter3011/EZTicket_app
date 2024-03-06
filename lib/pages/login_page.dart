// ignore_for_file: unused_local_variable, body_might_complete_normally_nullable

import 'dart:async';
import 'package:ezticket/model/wallet_provider.dart';
import 'package:ezticket/pages/mnemonic_generate_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:video_player/video_player.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool isButtonPressed = false;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('lib/assets/dynamic.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });

    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final walletProvider = Provider.of<WalletProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return VideoPlayer(_controller);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "Welcome to EZ Ticket",
                            style: TextStyle(fontSize: 35, fontFamily: 'Poppins'),
                          ),
                          TextSpan(
                            text: " Your One-stop solution to all Event Needs !",
                            style: TextStyle(fontSize: 35, fontFamily: 'Poppins')
                          )
                        ], 
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10), 
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.7),
                    BlendMode.srcATop,
                  ),
                  child: Image.asset(
                    'lib/assets/Seatlabnft.png',
                    width: 250,
                    height: 250,
                  ),
                ),

                const SizedBox(height: 120), 
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: SlideAction(
                    borderRadius: 30,
                    elevation: 0,
                    innerColor: Colors.grey[600],
                    outerColor: Colors.green.withOpacity(0.2),
                    sliderButtonIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                    text: "Create Wallet",
                    onSubmit: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GenerateMnemonicPage()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
