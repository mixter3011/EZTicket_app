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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/wave.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Please verify your mnemonic phrase:',
                style: TextStyle(fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40.0),
              TextField(
                onChanged: (value) {
                  setState(() {
                    verificationText = value;
                  });
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Enter mnemonic phrase',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  verifyMnemonic();
                },
                child: const Text('Verify', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: isVerified ? navigateToWalletPage : null,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  side: BorderSide(color: Color.fromARGB(0, 44, 19, 19)),
                  primary: Color.fromARGB(0, 169, 25, 25),
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