import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/views/login_page.dart';
import 'package:chat_app/views/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'LoginPage': (context) => const LoginPage(),
        RegisterPage.id: (context) =>  RegisterPage(),
      },
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
