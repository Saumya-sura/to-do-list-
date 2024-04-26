// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, dead_code

import 'package:flutter/material.dart';
import 'package:todo/todo.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _validateEmail = false;
  bool _validatePassword = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "TO-DO",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Content(),
      ),
    );
  }

  Widget Content() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter gmail",
              hintText: "abc@gmail.com",
              errorText: _validateEmail ? 'Value is empty' : null,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter password",
              hintText: "password",
              errorText: _validatePassword ? 'Value is empty' : null,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _emailController.text.isEmpty
                  ? _validateEmail = true
                  : _validateEmail = false;
              _passwordController.text.isEmpty
                  ? _validatePassword = true
                  : _validatePassword = false;

              if (!_validateEmail && !_validatePassword) {
                // Proceed with login logic
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TODO()),
                );
              }
            });
          },
          child: Text("Login"),
        ),
      ],
    );
  }
}
