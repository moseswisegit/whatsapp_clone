import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuSection extends StatelessWidget {
  final List menuItems = ["Message", "Online", "Groups", "Calls"];

  MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
                children: menuItems.map((item) {
              return InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 55,
                    top: 15,
                  ),
                  child: Text(
                    item,
                    style: GoogleFonts.inter(
                      color: Colors.white60,
                      fontSize: 29,
                    ),
                  ),
                ),
              );
            }).toList())),
      ),
    );
  }
}
