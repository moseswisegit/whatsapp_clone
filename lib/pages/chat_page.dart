import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home_page.dart';
import 'package:whatsapp/sections/BottomSection.dart';
import 'package:whatsapp/sections/ChatingSection.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dBlack,
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 23,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 23,
            ),
          ),
        ],
      ),
      body: const ChatingSection(),
      bottomNavigationBar: const BottomSection(),
    );
  }
}
