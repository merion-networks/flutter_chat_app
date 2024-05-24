import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String sender;
  final String message;
  final bool isMyMessage;

  const ChatBubble(
      {super.key,
      required this.message,
      required this.isMyMessage,
      required this.sender});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isMyMessage ? Colors.blueAccent : Colors.green),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
          Text(
            message,
            style: const TextStyle(fontSize: 10, color: Colors.white),
          )
        ],
      ),
    );
  }
}
