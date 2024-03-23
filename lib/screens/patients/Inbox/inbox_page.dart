import 'package:aarogya_meds/screens/patients/Inbox/message_details_page.dart';
import 'package:aarogya_meds/widget/appbars/menu_appbar.dart';
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
      title: Text(message.sender),
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

  Message({required this.sender, required this.body});
}

final List<Message> _messages = [
  Message(
    sender: 'John Doe',
    body: 'Hi, how are you?',
  ),
  Message(
    sender: 'Jane Smith',
    body: 'Are you available for a meeting tomorrow?',
  ),
  Message(
    sender: 'Alice Johnson',
    body: 'Don\'t forget about the project deadline!',
  ),
  // Add more messages as needed
];
