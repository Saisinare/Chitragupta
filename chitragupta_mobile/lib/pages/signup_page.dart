import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Spacer(),

              // Logo
              SizedBox(
                height: 150,
                child: Image.asset('assets/images/logo.png'),
              ),

              // Welcome Text
              Container(
                height: 80,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "Welcome to CHITRAGUPTA",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Text(
                      "Keep track of all your expenses.",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),

              // TextFields
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    // Email TextField
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Your name",
                        filled: true,
                        fillColor: const Color.fromARGB(255, 20, 20, 20),
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: const TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(30), // Rounded Borders
                          borderSide: BorderSide.none, // No Border Line
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                      ),
                    ),
                    const SizedBox(height: 15), // Spacing between fields

                    // Password TextField
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Email",
                        filled: true,
                        fillColor: const Color.fromARGB(255, 20, 20, 20),
                        hintStyle: const TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(30), // Rounded Borders
                          borderSide: BorderSide.none, // No Border Line
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                      ),
                    ),
                    const SizedBox(height: 15), // Spacing between fields

                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true, // Hide password
                      decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        fillColor: const Color.fromARGB(255, 20, 20, 20),
                        hintStyle: const TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(30), // Rounded Borders
                          borderSide: BorderSide.none, // No Border Line
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Signup",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ),

              const Spacer(flex: 1),

              SizedBox(
                height: 100,
                width: double.infinity,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Already have account?",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    child: Text(
                      " Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
