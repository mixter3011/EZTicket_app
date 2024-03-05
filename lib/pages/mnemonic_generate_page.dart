import 'package:ezticket/model/verify_mnemonic.dart';
import 'package:ezticket/model/wallet_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class GenerateMnemonicPage extends StatelessWidget {
  const GenerateMnemonicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final walletProvider = Provider.of<WalletProvider>(context);
    final mnemonic = walletProvider.generateMnemonic();
    final mnemonicWords = mnemonic.split(' ');

    void copyToClipboard() {
      Clipboard.setData(ClipboardData(text: mnemonic));
      ScaffoldMessenger.of(context).showSnackBar(
         const SnackBar(content: Text('Mnemonic Copied to Clipboard', style: TextStyle(fontFamily: 'Poppins'),)),
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VerifyMnemonicPage(mnemonic: mnemonic),
        ),
      );
    }

    return Scaffold(
      appBar: null, // Remove the app bar
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'lib/assets/Green iPhone 13 Wallpaper 1.png', // Replace with the correct path to your image
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
            colorBlendMode: BlendMode.darken, // Adjust the blend mode as needed
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center, // Center align text horizontally
              children: [
                const Text(
                  'Please Store This Mnemonic Phrase Safely',
                  textAlign: TextAlign.center, // Center align text vertically
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold, // Make it bold
                  ),
                ),
                const SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                    mnemonicWords.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1), // Semi-transparent background color
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          mnemonicWords[index],
                          textAlign: TextAlign.center, // Center align text inside the bubble
                          style: const TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                ElevatedButton.icon(
  onPressed: () {
    copyToClipboard();
  },
  icon: const Icon(Icons.copy),
  label: const Text('Copy to Clipboard', style: TextStyle(fontFamily: 'Poppins'),),
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
    textStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0), // Adjust the corner radius as needed
      side: const BorderSide(color: Colors.white), // Add this line to make the outline white
    ),
    primary: Colors.transparent, // Make the button transparent
    onPrimary: Color.fromARGB(255, 255, 255, 255), // Color of the text when pressed
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