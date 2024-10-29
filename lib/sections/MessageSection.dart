import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/pages/chat_page.dart';

const dGreen = Color(0xff2ac0a6);

class MessageSection extends StatelessWidget {
  const MessageSection({super.key});

  // Déclare la liste comme `static const` pour la rendre constante
  static const List<Map<String, dynamic>> messages = [
    {
      'senderProfile': 'images/avatar/v1.jpeg',
      'senderName': 'Lara',
      'message': 'Hello',
      'unRead': 0,
      'date': '16:35'
    },
    {
      'senderProfile': 'images/avatar/v2.jpeg',
      'senderName': 'John',
      'message': 'How are you?',
      'unRead': 2,
      'date': '15:20'
    },
    {
      'senderProfile': 'images/avatar/v1.jpeg',
      'senderName': 'Paul',
      'message': 'Let’s meet up!',
      'unRead': 1,
      'date': '14:50'
    },
    {
      'senderProfile': 'images/avatar/v2.jpeg',
      'senderName': 'Lucy',
      'message': 'Good morning!',
      'unRead': 0,
      'date': '09:10'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPage(),
                ),
              );
            },
            splashColor: dGreen,
            child: Container(
              padding: const EdgeInsets.only(left: 30, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                    width: 62,
                    height: 62,
                    margin: const EdgeInsets.only(right: 23),
                    decoration: BoxDecoration(
                      color: dGreen,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          message['senderProfile'],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                message['senderName'],
                                style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    message['message'],
                                    style: GoogleFonts.inter(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(message['date']),
                              message['unRead'] != 0
                                  ? Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                        color: dGreen,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        message['unRead'].toString(),
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  : Container()
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        color: Colors.grey[400],
                        height: 0.5,
                      )
                    ],
                  ))
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
