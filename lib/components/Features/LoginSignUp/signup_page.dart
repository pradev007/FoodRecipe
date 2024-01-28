import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodrecipe/components/Features/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:foodrecipe/custom/foodColor.dart';
import 'package:foodrecipe/components/Features/LoginSignUp/login_page.dart';
import 'package:foodrecipe/components/Screens/HomePage/firstPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodColor.colourStylesPrimaryColourPrimary20,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            icon: Icon(Icons.arrow_back_outlined)),
        title: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                "Create Your Account",
                style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.bold, color: FoodColor.colourStylesNeutralColourBlack),
              ),
              const AutoSizeText(
                "Lets help you set up your account,\n It won't take long",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.normal, color: FoodColor.colourStylesNeutralColourGray1),
              ),
              const SizedBox(height: 30),
              // Text form field for username
              const SizedBox(height: 10),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: const Icon(Icons.person_outline),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: FoodColor.colourStylesPrimaryColourPrimary100),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email Address",
                  prefixIcon: const Icon(Icons.email_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: FoodColor.colourStylesPrimaryColourPrimary100),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: FoodColor.colourStylesPrimaryColourPrimary100),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // confirm password
              // TextFormField(
              //   controller: _passwordController,
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     hintText: "Confirm Password",
              //     prefixIcon: const Icon(Icons.lock_outline_rounded),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //       borderSide: BorderSide(color: FoodColor.colourStylesPrimaryColourPrimary100),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 50.0,
                color: FoodColor.colourStylesPrimaryColourPrimary100,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: _signUp,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, color: FoodColor.colourStylesNeutralColourWhite),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text(
                      "LOG IN",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: FoodColor.colourStylesPrimaryColourPrimary100),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    try {
      User? user = await _auth.signUpWithEmailAndPasseword(email, password);
      if (user != null) {
        print("User is successfully created");
        // Navigate to another screen after successful signup
        // For example:
        Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
      } else {
        print("Error creating user");
      }
    } catch (e) {
      // Handle any potential signup errors here
      print("Error during signup: $e");
    }
  }
}
