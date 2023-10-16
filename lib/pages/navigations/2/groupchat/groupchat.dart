import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import '../../../../usersaver.dart';

class GroupChatPage extends StatefulWidget {
  @override
  _GroupChatPageState createState() => _GroupChatPageState();
}

class _GroupChatPageState extends State<GroupChatPage> {
  final messageController = TextEditingController();
  List<Map<String, dynamic>> messages = [];
  String senderId = '';
  String names = '';

  @override
  void initState() {
    super.initState();
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    senderId = userProvider.userId;
    fetchMessages();
  }

  Future<void> fetchMessages() async {
    try {
      final url = Uri.parse(
          'http://192.168.0.116:5000/group_chat/get_messages/AVRs66PxbhVFqMcfBRIW');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final List<dynamic> messageList = responseData['messages'];

        setState(() {
          messages = List<Map<String, dynamic>>.from(messageList);
        });

        // Fetch sender's name for each message
        for (var message in messages) {
          final senderId = message['sender_id'];
          final senderName = await fetchName(senderId);
          message['sender_name'] = senderName;
        }

        print('Messages fetched successfully:');
        print('Message Count: ${messages.length}');
      } else {
        print('Error fetching messages: ${response.statusCode}');
      }
    } catch (e) {
      print("Error fetching messages: $e");
    }
  }

  Future<String> fetchName(String senderId) async {
    try {
      final url =
          Uri.parse('http://192.168.8.142:5000/group_chat/get_name/$senderId');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final String name = responseData['name'];
        return name;
      } else {
        print('Error fetching sender name: ${response.statusCode}');
      }
    } catch (e) {
      print("Error fetching sender name: $e");
    }
    return ''; // Return empty string if an error occurs
  }

  Future<void> sendMessage(types.PartialText message) async {
    try {
      final userProvider = Provider.of<UserProvider>(context, listen: false);
      final senderId = userProvider.userId;

      final url =
          Uri.parse('http://192.168.8.142:5000/group_chat/send_message');
      final headers = {'Content-Type': 'application/json'};
      final body = jsonEncode({
        'group_id': 'AVRs66PxbhVFqMcfBRIW',
        'sender_id': senderId,
        'message_text': messageController.text,
      });

      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final messageText = responseData['message_text'];

        setState(() {
          messages.add({
            'message_text': messageText,
            'sender_id': senderId,
          });
        });

        print('Message sent successfully:');
        print('Group ID: ${responseData['group_id']}');
        print('Sender ID: ${responseData['sender_id']}');
        print('Message Text: $messageText');
      } else {
        final responseData = jsonDecode(response.body);
        print('Error sending message: ${responseData['error']}');
      }
    } catch (e) {
      print("Error sending message: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Chat'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Perform search action
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Perform settings action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message = messages[index];
                final String senderId = message['sender_id'];
                final String messageText = message['message_text'];
                final bool isMyMessage =
                    senderId == Provider.of<UserProvider>(context).userId;

                return FutureBuilder<String>(
                  future: fetchName(senderId),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    final senderName = snapshot.data ?? '';

                    return Container(
                      padding: EdgeInsets.fromLTRB(7, 3, 4, 5),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://cdn.britannica.com/03/180203-138-79F54772/Overview-sage.jpg?w=800&h=450&c=crop",
                          ),
                        ),
                        title: Text(
                          senderName,
                          textAlign:
                              isMyMessage ? TextAlign.right : TextAlign.left,
                        ),
                        subtitle: Text(
                          messageText,
                          textAlign:
                              isMyMessage ? TextAlign.right : TextAlign.left,
                        ),
                        trailing: isMyMessage ? Icon(Icons.check) : null,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: isMyMessage ? 16.0 : 8.0,
                        ),
                        tileColor: isMyMessage ? Colors.blue[100] : null,
                        isThreeLine: true,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type a message',
                    ),
                    textInputAction: TextInputAction.send,
                    onSubmitted: (value) async {
                      await sendMessage(
                          types.PartialText(text: messageController.text));

                      messageController.clear();
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () async {
                    await sendMessage(
                        types.PartialText(text: messageController.text));
                    messageController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
