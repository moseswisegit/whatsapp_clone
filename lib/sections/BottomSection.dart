import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.all(2),
        color: Colors.white, // Couleur blanche pour l'arrière-plan
        child: Row(
          children: [
            // Icône pour les emojis
            IconButton(
              icon: const Icon(Icons.emoji_emotions_outlined),
              color: Colors.grey,
              onPressed: () {
                // Action pour ouvrir l'emoji picker
              },
            ),
            // Champ de texte avec style arrondi
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30), // Coins arrondis
                ),
                child: Row(
                  children: [
                    // Icône pour le trombone (pièces jointes)
                    IconButton(
                      icon: const Icon(Icons.attach_file),
                      color: Colors.grey,
                      onPressed: () {
                        // Action pour attacher des fichiers
                      },
                    ),
                    // Icône pour la caméra
                    IconButton(
                      icon: const Icon(Icons.camera_alt),
                      color: Colors.grey,
                      onPressed: () {
                        // Action pour ouvrir la caméra
                      },
                    ),
                    // Champ de saisie de texte
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Message',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          // Action à effectuer lors de la saisie de texte
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Bouton Micro
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle, // Forme circulaire pour le bouton micro
              ),
              child: IconButton(
                onPressed: () {
                  // Action pour le micro
                },
                icon: const Icon(
                  Icons.mic, // Icône micro
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
