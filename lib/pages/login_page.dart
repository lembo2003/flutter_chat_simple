import 'package:flutter/material.dart';
import 'package:flutter_chat/components/my_button.dart';
import 'package:flutter_chat/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  //email and pw textfield controller

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  LoginPage({super.key});

  //login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //LOGO
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 15),
            //SLOGAN
            Text(
              r"Let's start chatting!",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(height: 25),
            //Email textfield
            MyTextField(
              hintText: "Enter your email...",
              obscureText: false,
              controller: _emailController,
            ),
            SizedBox(height: 10),
            //Password textfield
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _pwController,
            ),
            SizedBox(height: 25),
            //Login Button
            MyButton(text: "Login", onTap: login),
            SizedBox(height: 25),
            //Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  "Register now!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
