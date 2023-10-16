// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// import 'model.dart';

// class ChatPage extends StatefulWidget {
//   const ChatPage({Key? key}) : super(key: key);

//   @override
//   _ChatPageState createState() => _ChatPageState();
// }

// class _ChatPageState extends State<ChatPage> {
//   final backgroundColor = Color(0xff343541);
//   final botBackgroundColor = Color(0xff444654);
//   final _textController = TextEditingController();
//   final _scrollController = ScrollController();
//   final List<ChatMessage> _messages = [];
//   bool isLoading = false;
//    List<Map<String, dynamic>> messages = [];

//   @override
//   void dispose() {
//     _textController.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }
//   void sendMessage() async {
//   var url = Uri.parse('http://192.168.100.154/generate_completion');
//   var headers = {'Content-Type': 'application/json'};
//   var body = jsonEncode({'prompt': _textController.text});

//   var response = await http.post(url, headers: headers, body: body);
//   if (response.statusCode == 200) {
//     var data = jsonDecode(response.body);
//     final List<dynamic> messageList = data['completion'];

//     setState(() {
//       messages = List<Map<String, dynamic>>.from(messageList);
//     });

//     var botResponse = messages[0]['message']; // Get the first message from the response
//     addMessageToChat(_textController.text, ChatMessageType.user);
//     addMessageToChat(botResponse, ChatMessageType.bot);
//   } else {
//     throw Exception('Failed to generate completion');
//   }
// }

//  void addMessageToChat(String message, ChatMessageType chatMessageType) {
//     setState(() {
//       _messages.add(
//         ChatMessage(
//           text: message,
//           chatMessageType: chatMessageType,
//         ),
//       );
//     });
//     _scrollDown();
//   }

//   void _scrollDown() {
//     _scrollController.animateTo(
//       _scrollController.position.maxScrollExtent,
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeOut,
//     );
//   }

//   Widget _buildSubmit() {
//     return Visibility(
//       visible: !isLoading,
//       child: Container(
//         color: Colors.grey,
//         child: IconButton(
//           icon: const Icon(
//             Icons.send_rounded,
//             color: Colors.black,
//           ),
//           onPressed: () async {
//             setState(() {
//               isLoading = true;
//             });

//             var userMessage = _textController.text;
//             _textController.clear();

//             var botResponse = sendMessage();
//             addMessageToChat(userMessage, ChatMessageType.user);
//             addMessageToChat(botResponse, ChatMessageType.bot);

//             setState(() {
//               isLoading = false;
//             });
//           },
//         ),
//       ),
//     );
//   }

//   Expanded _buildInput() {
//     return Expanded(
//       child: TextField(
//         textCapitalization: TextCapitalization.sentences,
//         style: const TextStyle(color: Colors.white),
//         controller: _textController,
//         decoration: InputDecoration(
//           hintText: "     Ask me Anything You Want!!!",
//           fillColor: Colors.grey,
//           filled: true,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(80.0),
//           ),
//         ),
//       ),
//     );
//   }

//   ListView _buildList() {
//     return ListView.builder(
//       controller: _scrollController,
//       itemCount: _messages.length,
//       itemBuilder: (context, index) {
//         var message = _messages[index];
//         return ChatMessageWidget(
//           text: message.text,
//           chatMessageType: message.chatMessageType,
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 100,
//         title: const Padding(
//           padding: EdgeInsets.all(0),
//           child: Text(
//             "Student Helper AI",
//             maxLines: 2,
//             textAlign: TextAlign.center,
//           ),
//         ),
//         backgroundColor: botBackgroundColor,
//         actions: [
//           ClipOval(
//             child: Image.network(
//               'https://images.theconversation.com/files/357653/original/file-20200911-18-15lt2ar.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip',
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//       backgroundColor: backgroundColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: _buildList(),
//             ),
//             Visibility(
//               visible: isLoading,
//               child: const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: CircularProgressIndicator(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   _buildInput(),
//                   _buildSubmit(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ChatMessageWidget extends StatelessWidget {
//   final String text;
//   final ChatMessageType chatMessageType;
//   final Color backgroundColor;
//   final Color botBackgroundColor;

//   const ChatMessageWidget({
//     Key? key,
//     required this.text,
//     required this.chatMessageType,
//     this.backgroundColor = const Color(0xff343541),
//     this.botBackgroundColor = const Color(0xff444654),
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 10.0),
//       padding: const EdgeInsets.all(16),
//       color: chatMessageType == ChatMessageType.bot
//           ? botBackgroundColor
//           : backgroundColor,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           chatMessageType == ChatMessageType.bot
//               ? Container(
//                   margin: const EdgeInsets.only(right: 16.0),
//                   child: CircleAvatar(
//                     backgroundColor: Colors.transparent,
//                     child: Image.network(
//                       'https://cdn-icons-png.flaticon.com/512/4712/4712206.png',
//                     ),
//                   ),
//                 )
//               : Container(
//                   margin: const EdgeInsets.only(right: 16.0),
//                   child: const CircleAvatar(
//                     child: Icon(
//                       Icons.person,
//                     ),
//                   ),
//                 ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   padding: const EdgeInsets.all(8.0),
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                   ),
//                   child: Text(
//                     text,
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyText2
//                         ?.copyWith(color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChatMessage {
//   final String text;
//   final ChatMessageType chatMessageType;

//   const ChatMessage({
//     required this.text,
//     required this.chatMessageType,
//   });
// }

// enum ChatMessageType {
//   user,
//   bot,
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Map<String, String>> messages = [];
  TextEditingController _textEditingController = TextEditingController();

  Future<String> generateCompletion(String prompt) async {
    final url = 'http://192.168.0.116:5000/generate_completion';

    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'prompt': prompt}),
    );

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final completionText = jsonResponse['completion'] as String;
      return completionText;
    } else {
      throw Exception('Failed to generate completion');
    }
  }

  void sendMessage(String? message) async {
    if (message != null) {
      final botResponse = await generateCompletion(message);

      setState(() {
        messages.add({'sender': 'user', 'message': message});
        messages.add({'sender': 'bot', 'message': botResponse});
      });

      _textEditingController.clear();
    }
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return ListTile(
                  title: Text(
                    message['message'] ?? '',
                    textAlign: message['sender'] == 'user'
                        ? TextAlign.right
                        : TextAlign.left,
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _textEditingController,
              onSubmitted: (value) {
                sendMessage(value);
              },
              decoration: InputDecoration(
                hintText: 'Type a message...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    sendMessage(_textEditingController.text);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
