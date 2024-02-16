import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.sender,
    required this.receiver,
    required this.amount,
  }) : super(key: key);

  final String sender;
  final String receiver;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Address: ca6e*******a661b',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0), // Add some space between the address texts
          const Row(
            children: [
              Icon(Icons.arrow_forward),
            ],
          ),
          const SizedBox(height: 20.0), // Add some space between the arrow and the next address
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Address: 0x39********53cb',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0), // Add some space between the second address and the amount text
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Text(
                      'Amount: ETH val: ',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18),
                    ),
                    Image.asset(
                      'lib/assets/eth.png', // replace with your image path
                      height: 24, // adjust the height as needed
                      width: 24, // adjust the width as needed
                    ),
                    const Text(
                      ' 2.0',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
