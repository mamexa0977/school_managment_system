
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_managment_system/pages/AUTH/login.dart';

import 'package:school_managment_system/usersaver.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserProvider(),
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group Chat',
      home: LoginPage(),
      
    );
  }
}

// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final _controller = TextEditingController();
//   List<String> _messages = [];
//   late IO.Socket _socket;
//   late String _username = "mohammed";

//   @override
//   void initState() {
//     super.initState();
//     // _socket = IO.io('http://localhost:3000', <String, dynamic>{
//     //   'transports': ['websocket'],
//     });
//   //   _socket.on('connect', (_) {
//   //     var random = new Random();
//   //     _username = 'User ${random.nextInt(1000)}';
//   //     _socket.emit('join', {'room': 'group', 'user': _username});
//   //   });
//   //   _socket.on('new user joined', (data) {
//   //     setState(() {
//   //       _messages.add('${data['user']} has joined the chat');
//   //     });
//   //   });
//   //   _socket.on('new message', (data) {
//   //     setState(() {
//   //       _messages.add('${data['user']}: ${data['message']}');
//   //     });
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Group Chat'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: ListView.builder(
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(_messages[index]),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: TextField(
//               controller: _controller,
//               decoration: InputDecoration(
//                 hintText: 'Enter your message',
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               _socket.emit('send message', {
//                 'room': 'group',
//                 'user': _username,
//                 'message': _controller.text
//               });
//               _controller.clear();
//             },
//             child: Text('Send'),
//           ),
//         ],
//       ),
//     );
//   }
// }
          



