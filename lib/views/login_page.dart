import 'package:chat_app/views/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfiled.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(children: [
          const SizedBox(
            height: 75,
          ),
          Image.asset(
            'assets/images/scholar.png',
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Scholar Chat',
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'pacifico',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
           CustomTextField(
            hintText: 'Email',
          ),
          const SizedBox(
            height: 15,
          ),
           CustomTextField(
            hintText: 'Password',
          ),
          const SizedBox(
            height: 25,
          ),
           CustomButton(
            text: "login",
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Dont\,t have an account?',
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegisterPage.id);
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xffC7EDE6),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
