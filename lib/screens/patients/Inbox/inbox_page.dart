import 'package:aarogya_meds/screens/patients/Inbox/message_details_page.dart';
import 'package:aarogya_meds/widget/appbars/menu_appbar.dart';
import 'package:aarogya_meds/widget/drawer.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MenuAppbar(
        title: "Chats",
        isHome: true,
      ),
      drawer:  CustomDrawer(),
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

  Widget _buildMessageListItem(BuildContext context, Message message) {
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

  void _navigateToMessageDetail(BuildContext context, Message message) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MessageDetailPage(message: message),
      ),
    );
  }
}

class Message {
  final String sender;
  final String body;
  final String time;

  Message({required this.sender, required this.body, required this.time});
}

final List<Message> _messages = [
  Message(
    sender: 'John Doe',
    body: 'Hi, how are you?',
    time: "12.53 PM",
  ),
  Message(
    sender: 'Jane Smith',
    body: 'Are you available for a meeting tomorrow?',
    time: "5.21 PM",
  ),
  Message(
    sender: 'Alice Johnson',
    body: 'Don\'t forget about the project deadline!',
    time: "10.11 AM",
  ),
  // Add more messages as needed
];
