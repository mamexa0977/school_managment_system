// import 'package:http/http.dart' as http;

// class HttpService {
//   Future<void> sendPostRequest(String email, String password) async {
//     String url = 'http://127.0.0.1:5000/login';
//     Map<String, String> headers = {'Content-Type': 'application/json'};
//     String body = '{"email": "$email", "password": "$password"}';

//     try {
//       final response = await http.post(Uri.parse(url), headers: headers, body: body);
//       if (response.statusCode == 200) {
//         // Login success
//         // Handle successful login, such as navigating to another screen
//       } else {
//         // Login failed
//         // Handle login failure, display an error message, etc.
//       }
//     } catch (e) {
//       // Error occurred during login
//       // Handle error, display an error message, etc.
//     }
//   }
// }
