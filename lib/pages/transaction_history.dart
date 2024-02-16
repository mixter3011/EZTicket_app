import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: AssetImage('lib/assets/profile_image.jpg'), 
            ),
            onPressed: () {
              
            },
          ),
        ],
        title: const Text('Transaction History'),
      ),
    );
  }
}
