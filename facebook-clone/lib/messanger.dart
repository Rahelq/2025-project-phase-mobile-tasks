import 'package:flutter/material.dart';

void main() {
  runApp(const MessengerPage());
}
class MessengerPage extends StatelessWidget {
  const MessengerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Messenger',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Go back
          },
        ),
      ),
      body: const Center(
        child: Text(
          "Messenger Page Content Here",
          style: TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ),
    );
  }
}