import 'package:flutter/material.dart';
import 'package:whatsapp/sections/FavoriteSection.dart';
import 'package:whatsapp/sections/MenuSection.dart';
import 'package:whatsapp/sections/MessageSection.dart';


const dGreen = Color(0xff2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        foregroundColor: dWhite,
        title: const Text("Whatsapp"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: dWhite,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: dWhite,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          const Expanded(child: MessageSection()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: dGreen,
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          color: dWhite,
          size: 20,
        ),
      ),
    );
  }
}
