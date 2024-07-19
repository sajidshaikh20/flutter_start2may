import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Center(
        child: Text(
          'Sign In',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
