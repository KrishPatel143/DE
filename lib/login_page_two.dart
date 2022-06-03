import 'package:de/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPageTwo extends StatefulWidget {
  const LoginPageTwo({Key? key}) : super(key: key);

  @override
  State<LoginPageTwo> createState() => _LoginPageTwoState();
}

class _LoginPageTwoState extends State<LoginPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Image.asset(
            'assets/doctor.png',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
          const Text(
            'Hello Doctor!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Welcome back, you\'ve been missed!',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 50),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter userName",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                ),
              ],
            ),
          )
          //
          //
        ],
      ),
    ));
  }
}
