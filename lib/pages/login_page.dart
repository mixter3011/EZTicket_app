import 'dart:ui';
import 'package:ezticket/model/wallet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color buttonColor = Colors.transparent; // Initial color
  bool isButtonPressed = false; // Track if the button is pressed

  @override
  Widget build(BuildContext context) {
    final walletProvider = Provider.of<WalletProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          // Background wave image with translucency
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Image.asset(
                'lib/assets/wave.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content (Seatlabnft image and Create Wallet button)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Seatlabnft image
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

                const SizedBox(height: 30),

                // Welcome Text
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                            text: "Welcome to ",
                          ),
                          TextSpan(
                            text: "EZTicket",
                            style: TextStyle(
                              color: Color.fromARGB(255, 224, 142, 205),
                            ),
                          ),
                          TextSpan(
                            text: " A One Stop Destination for all your Event needs",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // Create Wallet button
                GlowingOverscrollIndicator(
                  color: isButtonPressed ? Color.fromARGB(255, 225, 150, 175) : Colors.transparent,
                  showLeading: false,
                  showTrailing: false,
                  axisDirection: AxisDirection.down,
                  child: InkWell(
                    onTap: () async {
                      final mnemonic = walletProvider.generateMnemonic();
                      final privateKey = await walletProvider.getPrivateKey(mnemonic);
                      final publicKey = await walletProvider.getPublicKey(privateKey);

                      print("Mnemonic: $mnemonic");
                      print("Private Key: $privateKey");
                      print("Public Key: $publicKey");
                      
                      setState(() {
                        isButtonPressed = true;
                      });

                      // Delay to see the glow effect
                      Future.delayed(Duration(milliseconds: 300), () {
                        setState(() {
                          isButtonPressed = false;
                        });
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                      decoration: BoxDecoration(
                        color: isButtonPressed ? const Color.fromARGB(255, 214, 139, 164) : buttonColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Text(
                        "Create Wallet",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
