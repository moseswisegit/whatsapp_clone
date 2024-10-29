import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatingSection extends StatelessWidget {
  const ChatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Couleur d'arrière-plan globale
      body: Column(
        children: [
          // En-tête de l'utilisateur avec avatar, nom et statut
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 25, // Taille de l'avatar
                  backgroundImage: AssetImage(
                      'images/avatar/v2.jpeg'), // Chemin vers l'image de l'avatar
                ),
                const SizedBox(
                    width: 15), // Espacement entre l'avatar et le texte
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alla Burda",
                      style: GoogleFonts.inter(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Was online 56 seconds ago",
                      style: GoogleFonts.inter(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Section pour les messages
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: ListView(
                children: [
                  const SizedBox(height: 10),

                  // Message envoyé par l'utilisateur (aligné à droite avec avatar)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Le message envoyé
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Hello, how are you?",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      // Avatar à droite pour le message envoyé
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/avatar/v2.jpeg'),
                      ),
                    ],
                  ),

                  // Message reçu avec l'avatar à gauche
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/avatar/v1.jpeg'),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "I'm good, thanks! How about you?",
                            style: GoogleFonts.inter(
                              color: Colors.black87,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Message avec image (aligné à droite avec avatar)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'images/avatar/v1.jpeg',
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/avatar/v2.jpeg'),
                      ),
                    ],
                  ),

                  // Message reçu avec audio (avatar à gauche)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/avatar/v1.jpeg'),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.play_arrow,
                                  color: Colors.black87),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  height: 5,
                                  color: Colors.black38,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text("00:32"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
