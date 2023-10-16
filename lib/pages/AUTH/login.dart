import 'dart:convert';

// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';
import 'package:provider/provider.dart';
import 'package:school_managment_system/pages/common/text_field.dart';
import 'package:school_managment_system/pages/AUTH/register.dart';
import 'package:school_managment_system/pages/home.dart';
import 'package:http/http.dart' as http;

// import '../../server/loginserver.dart';
import '../../usersaver.dart';
import '../common/button.dart';
import '../common/header.dart';
import '../common/heading.dart';
import './forgotten.dart';

class LoginPage extends StatefulWidget {
  // final HttpService? httpService;

  const LoginPage();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // late final HttpService httpService;

  //
  final _loginFormKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  // Future<void> loginUser() async {
    
  //   final url = Uri.parse('http://192.168.8.142:5000/login');
  //   final headers = {'Content-Type': 'application/json'};
  //   final body = jsonEncode({
  //     'email': emailController.text,
  //     'password': passwordController.text,
  //   });

  //   final response = await http.post(url, headers: headers, body: body);

  //   if (response.statusCode == 200) {
  //     final responseData = jsonDecode(response.body);
  //     print('Login successful');
  //     print('User ID: ${responseData['user_id']}');
  //     final userProvider = Provider.of<UserProvider>(context, listen: false);
  //     userProvider.setUserId(responseData['user_id']);
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  //   } else {
  //     final responseData = jsonDecode(response.body);
  //     print('Invalid credentials: ${responseData['message']}');
  //   }
  // }
Future<void> loginUser() async {
  Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));

}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEEF1F3),
        body: Column(
          children: [
            const PageHeader(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _loginFormKey,
                    child: Column(
                      children: [
                        const PageHeading(
                          title: 'Log-in',
                        ),
                        CustomInputField(
                            textEditingController: emailController,
                            labelText: 'Email',
                            hintText: 'Your email id',
                            validator: (textValue) {
                              if (textValue == null || textValue.isEmpty) {
                                return 'Email is required!';
                              }
                              if (!EmailValidator.validate(textValue)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            }),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomInputField(
                          labelText: 'Password',
                          hintText: 'Your password',
                          obscureText: true,
                          suffixIcon: true,
                          validator: (textValue) {
                            if (textValue == null || textValue.isEmpty) {
                              return 'Password is required!';
                            }
                            return null;
                          },
                          textEditingController: passwordController,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: size.width * 0.80,
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPasswordPage()))
                            },
                            child: const Text(
                              'Forget password?',
                              style: TextStyle(
                                color: Color(0xff939393),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomFormButton(
                          innerText: 'Login',
                          onPressed: loginUser,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Don\'t have an account ? ',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff939393),
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignupPage()))
                                },
                                child: const Text(
                                  'Sign-up',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff748288),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleLoginUser() {
    // login user
    if (_loginFormKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Submitting data..')));
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }
  }
// }

// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';
// import 'package:provider/provider.dart';
// import 'package:school_managment_system/pages/common/text_field.dart';
// import 'package:school_managment_system/pages/AUTH/register.dart';
// import 'package:school_managment_system/pages/home.dart';
// import 'package:http/http.dart' as http;
// import '../../usersaver.dart';
// import '../common/button.dart';
// import '../common/heading.dart';
// import './forgotten.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage();

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _loginFormKey = GlobalKey<FormState>();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   bool isLoading = false;
//   String errorMessage = '';

//   Future<void> loginUser() async {
//            Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Home()));
//     // setState(() {
//     //   isLoading = true;
//     //   errorMessage = '';
//     // });

//     // final url = Uri.parse('http://192.168.0.116:5000/login');
//     // final headers = {'Content-Type': 'application/json'};
//     // final body = jsonEncode({
//     //   'email': emailController.text,
//     //   'password': passwordController.text,
//     // });

//     // try {
//     //   final response = await http.post(url, headers: headers, body: body);

//     //   if (response.statusCode == 200) {
//     //     final responseData = jsonDecode(response.body);
//     //     print('Login successful');
//     //     print('User ID: ${responseData['user_id']}');
//     //     final userProvider = Provider.of<UserProvider>(context, listen: false);
//     //     userProvider.setUserId(responseData['user_id']);
//     //     setState(() {
//     //       isLoading = false;
//     //     });
//     //     Navigator.push(
//     //         context, MaterialPageRoute(builder: (context) => Home()));
//     //   } else {
//     //     final responseData = jsonDecode(response.body);
//     //     print('Invalid credentials: ${responseData['message']}');
//     //     setState(() {
//     //       isLoading = false;
//     //       errorMessage = responseData['message'];
//     //     });
//     //   }
//     // } catch (e) {
//     //   print('Error occurred during login: $e');
     
//     //   setState(() {
//     //     isLoading = false;
//     //     errorMessage = 'An error occurred during login.';
//     //   });
//     // }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: const Color(0xffEEF1F3),
//         body: Form(
//           key: _loginFormKey,
//           child: Stack(
//             children: [
//               Image.asset(
//                 'assets/images/background.jpg',
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//                 height: double.infinity,
//               ),
//               // const PageHeader(),
//               Expanded(
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.vertical(
//                       top: Radius.circular(20),
//                     ),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Form(
//                       key: _loginFormKey,
//                       child: Column(
//                         children: [
//                            PageHeading(
//                             title: 'Log-in',
//                           ),
//                           CustomInputField(
//                             textEditingController: emailController,
//                             labelText: 'Email',
//                             hintText: 'Your email id',
//                             validator: (textValue) {
//                               if (textValue == null || textValue.isEmpty) {
//                                 return 'Email is required!';
//                               }
//                               if (!EmailValidator.validate(textValue)) {
//                                 return 'Please enter a valid email';
//                               }
//                               return null;
//                             },
//                           ),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           CustomInputField(
//                             labelText: 'Password',
//                             hintText: 'Your password',
//                             obscureText: true,
//                             suffixIcon: true,
//                             validator: (textValue) {
//                               if (textValue == null || textValue.isEmpty) {
//                                 return 'Password is required!';
//                               }
//                               return null;
//                             },
//                             textEditingController: passwordController,
//                           ),
//                           const SizedBox(
//                             height: 16,
//                           ),
//                           Container(
//                             width: size.width * 0.80,
//                             alignment: Alignment.centerRight,
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         const ForgetPasswordPage(),
//                                   ),
//                                 );
//                               },
//                               child: const Text(
//                                 'Forget password?',
//                                 style: TextStyle(
//                                   color: Color(0xff939393),
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           isLoading
//                               ? CircularProgressIndicator() // Show loading indicator when logging in
//                               : CustomFormButton(
//                                   innerText: 'Login',
//                                   onPressed: loginUser,
//                                 ),
//                           const SizedBox(
//                             height: 18,
//                           ),
//                           if (errorMessage.isNotEmpty)
//                             Text(
//                               errorMessage,
//                               style: TextStyle(color: Colors.red),
//                             ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           SizedBox(
//                             width: size.width * 0.8,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 const Text(
//                                   'Don\'t have an account ? ',
//                                   style: TextStyle(
//                                       fontSize: 13,
//                                       color: Color(0xff939393),
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => const SignupPage(),
//                                       ),
//                                     );
//                                   },
//                                   child: const Text(
//                                     'Sign-up',
//                                     style: TextStyle(
//                                         fontSize: 15,
//                                         color: Color(0xff748288),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               // Text("Welcome Back"),
             
//               // Align(
//               //   alignment: Alignment.bottomCenter,
//               //   child: Padding(
//               //     padding: EdgeInsets.all(16.0),
//               //     child: Column(mainAxisSize: MainAxisSize.min, children: [
//               //       CustomInputField(
//               //         textEditingController: emailController,
//               //         labelText: 'Email',
//               //         hintText: 'Your email id',
//               //         validator: (textValue) {
//               //           if (textValue == null || textValue.trim().isEmpty) {
//               //             return 'Email is required!';
//               //           }
//               //           if (!EmailValidator.validate(textValue.trim())) {
//               //             return 'Please enter a valid email';
//               //           }
//               //           return null;
//               //         },
//               //       ),
//               //       const SizedBox(
//               //         height: 16,
                      
//               //       ),
//               //       CustomInputField(
//               //         labelText: 'Password',
//               //         hintText: 'Your password',
//               //         obscureText: true,
//               //         suffixIcon: true,
//               //         validator: (textValue) {
//               //           if (textValue == null || textValue.isEmpty) {
//               //             return 'Password is required!';
//               //           }
//               //           return null;
//               //         },
//               //         textEditingController: passwordController,
//               //       ),
//               //       const SizedBox(
//               //         height: 16,
//               //       ),
//               //       Container(
//               //         width: size.width * 0.80,
//               //         alignment: Alignment.centerRight,
//               //         child: GestureDetector(
//               //           onTap: () {
//               //             Navigator.push(
//               //               context,
//               //               MaterialPageRoute(
//               //                 builder: (context) => const ForgetPasswordPage(),
//               //               ),
//               //             );
//               //           },
//               //           child: const Text(
//               //             'Forget password?',
//               //             style: TextStyle(
//               //               color: Color(0xff939393),
//               //               fontSize: 13,
//               //               fontWeight: FontWeight.bold,
//               //             ),
//               //           ),
//               //         ),
//               //       ),
//               //       const SizedBox(
//               //         height: 20,
//               //       ),
//               //       isLoading
//               //           ? CircularProgressIndicator() // Show loading indicator when logging in
//               //           : CustomFormButton(
//               //               innerText: 'Login',
//               //               onPressed: loginUser,
//               //             ),
//               //       const SizedBox(
//               //         height: 18,
//               //       ),
//               //       if (errorMessage.isNotEmpty)
//               //         Text(
//               //           errorMessage,
//               //           style: TextStyle(color: Colors.red),
//               //         ),
//               //       const SizedBox(
//               //         height: 20,
//               //       ),
//               //       SizedBox(
//               //         width: size.width * 0.8,
//               //         child: Row(
//               //           mainAxisAlignment: MainAxisAlignment.center,
//               //           children: [
//               //             const Text(
//               //               'Don\'t have an account ? ',
//               //               style: TextStyle(
//               //                   fontSize: 13,
//               //                   color: Color(0xff939393),
//               //                   fontWeight: FontWeight.bold),
//               //             ),
//               //             GestureDetector(
//               //               onTap: () {
//               //                 Navigator.push(
//               //                   context,
//               //                   MaterialPageRoute(
//               //                     builder: (context) => const SignupPage(),
//               //                   ),
//               //                 );
//               //               },
//               //               child: const Text(
//               //                 'Sign-up',
//               //                 style: TextStyle(
//               //                     fontSize: 15,
//               //                     color: Color(0xff748288),
//               //                     fontWeight: FontWeight.bold),
//               //               ),
//               //             ),
//               //           ],
//               //         ),
//               //       ),
//               //       const SizedBox(
//               //         height: 20,
//               //       ),
//               //     ]),
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
}