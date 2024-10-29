import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dGreen = Color(0xff2ac0a6);

class FavoriteSection extends StatelessWidget {
  FavoriteSection({super.key});

  final List FavoriteContacts = [
    {'name': "Alla", 'profile': 'images/avatar/v1.jpeg'},
    {'name': "Momo", 'profile': 'images/avatar/v2.jpeg'},
    {'name': "Paul", 'profile': 'images/avatar/v1.jpeg'},
    {'name': "Luc", 'profile': 'images/avatar/v2.jpeg'},
    {'name': "Jean", 'profile': 'images/avatar/v1.jpeg'},
    {'name': "Philippe", 'profile': 'images/avatar/v2.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
          color: dGreen,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Favorite contacts",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10), // Espacement entre le titre et la liste
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: FavoriteContacts.map((favorite) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(favorite['profile']),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          favorite['name']!,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
