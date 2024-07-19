import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../configs/routes_constant.dart';

class UserDetailScreen extends StatefulWidget {
  const UserDetailScreen({super.key});

  @override
  State<UserDetailScreen> createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
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
                context.goNamed(AppRoutess.userDetailSignIn.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
