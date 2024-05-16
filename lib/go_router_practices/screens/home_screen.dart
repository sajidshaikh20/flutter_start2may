import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../configs/routes_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,


        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'User Listing',
              ),
              onPressed: () {
                context.goNamed(AppRoutess.users.name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'User Detail',
              ),
              onPressed: () {
                context.goNamed(AppRoutess.userDetail.name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'Sign In',
              ),
              onPressed: () {
                context.goNamed(AppRoutess.homeSignIn.name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 8,
            ),
            child: FilledButton(
              child: const Text(
                'Log out',
              ),
              onPressed: () {
                context.goNamed(AppRoutess.getStartedSignIn.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
