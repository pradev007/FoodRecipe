import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodrecipe/custom/foodColor.dart';
import 'package:foodrecipe/components/Features/LoginSignUp/signup_page.dart';
import 'package:foodrecipe/components/Screens/HomePage/firstPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: FoodColor.colourStylesPrimaryColourPrimary20,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset('assets/foodLogo.png'),
                ),
                const SizedBox(height: 25),
                const Text(
                  "Login Now",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: FoodColor.colourStylesPrimaryColourPrimary100,
                  ),
                ),
                const SizedBox(height: 25),
                TextFormField(
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
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: FoodColor.colourStylesPrimaryColourPrimary100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Checkbox(value: true, onChanged: null),
                    const Text("Remember me "),
                    const SizedBox(width: 100),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: FoodColor.colourStylesPrimaryColourPrimary100,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 50.0,
                  // color: FoodColor.colourStylesPrimaryColourPrimary100,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      // Perform login logic here
                      // For demo, navigate to FirstPage on button press
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const FirstPage()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstPage()));
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(FoodColor.colourStylesPrimaryColourPrimary100)),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: FoodColor.colourStylesNeutralColourWhite,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "or Login via",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Button 1");
                      },
                      child: Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/fbLogo.png'),
                            const Text("Facebook"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {
                        print("Button 2");
                      },
                      child: Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/googleLogo1.png',
                              scale: 20,
                            ),
                            const Text("Google"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member?',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigate to SignUpPage when "SIGN UP" is pressed
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                      },
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: FoodColor.colourStylesPrimaryColourPrimary100,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
