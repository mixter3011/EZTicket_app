import 'package:ezticket/model/wallet_provider.dart';
import 'package:ezticket/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerifyMnemonicPage extends StatefulWidget {
  final String mnemonic;

  const VerifyMnemonicPage({Key? key, required this.mnemonic})
      : super(key: key);

  @override
  _VerifyMnemonicPageState createState() => _VerifyMnemonicPageState();
}

class _VerifyMnemonicPageState extends State<VerifyMnemonicPage> {
  bool isVerified = false;
  String verificationText = '';

  void verifyMnemonic() {
    final walletProvider = Provider.of<WalletProvider>(context, listen: false);

    if (verificationText.trim() == widget.mnemonic.trim()) {
      walletProvider.getPrivateKey(widget.mnemonic).then((privateKey) {
        setState(() {
          isVerified = true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    void navigateToWalletPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WalletPage()),
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/Green iPhone 13 Wallpaper 1.png'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Please verify your mnemonic phrase:',
                style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 40.0),
              TextField(
                onChanged: (value) {
                  setState(() {
                    verificationText = value;
                  });
                },
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Enter mnemonic phrase',
                  labelStyle: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                ),
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  verifyMnemonic();
                },
                child: const Text('Verify', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'Poppins')),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: isVerified ? navigateToWalletPage : null,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  side: const BorderSide(color: Color.fromARGB(0, 44, 19, 19)),
                  primary: const Color.fromARGB(0, 169, 25, 25),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Next', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
