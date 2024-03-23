import 'package:aarogya_meds/screens/pharmacists/Inbox/pha_msg_details.dart';
import 'package:aarogya_meds/widget/appbars/menu_appbar2.dart';
import 'package:flutter/material.dart';

class PhaInboxPage extends StatelessWidget {
  const PhaInboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MenuAppbar2(
        title: "Chats",
        isHome: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: _messages.length,
          itemBuilder: (context, index) {
            final message = _messages[index];
            return _buildMessageListItem(context, message);
          },
        ),
      ),
    );
  }

  Widget _buildMessageListItem(BuildContext context, PhaMessage message) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(
          message.sender[0],
          style: const TextStyle(color: Colors.white),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(message.sender),
          Text(
            message.time,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      subtitle: Text(message.body),
      onTap: () {
        // Add functionality to handle message tap
        _navigateToMessageDetail(context, message);
      },
    );
  }

  void _navigateToMessageDetail(BuildContext context, PhaMessage message) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PhaMessageDetailPage(message: message),
      ),
    );
  }
}

class PhaMessage {
  final String sender;
  final String body;
  final String time;

  PhaMessage({required this.sender, required this.body, required this.time});
}

final List<PhaMessage> _messages = [
  PhaMessage(
    sender: 'John Doe',
    body: 'Hi, how are you?',
    time: "12.53 PM",
  ),
  PhaMessage(
    sender: 'Jane Smith',
    body: 'Are you available for a meeting tomorrow?',
    time: "5.21 PM",
  ),
  PhaMessage(
    sender: 'Alice Johnson',
    body: 'Don\'t forget about the project deadline!',
    time: "10.11 AM",
  ),
  // Add more messages as needed
];
