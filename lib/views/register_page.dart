import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfiled.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'RegisterPage';
  String? email;
  String? password;
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
          const Row(
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
          const Row(
            children: [
              Text(
                'REGISTER',
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onChange: (data) {
              email = data;
            },
            hintText: 'Email',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onChange: (data) {
              password = data;
            },
            hintText: 'Password',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            ontap: () async {
              void signUp(
                  BuildContext context, String email, String password) async {
                try {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email, password: password);
                } on FirebaseAuthException catch (e) {
                  String message = '';
                  if (e.code == 'weak-password') {
                    message = 'The password provided is too weak.';
                  } else if (e.code == 'email-already-in-use') {
                    message = 'The account already exists for that email.';
                  }

                  final snackBar = SnackBar(content: Text(message));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } catch (e) {
                  final snackBar = SnackBar(content: Text(e.toString()));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }
            },
            text: "Sign Up",
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'already have an account?',
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Login',
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
