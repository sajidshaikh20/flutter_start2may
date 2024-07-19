import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../configs/routes_constant.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade50,
      appBar: AppBar(
        title: const Text('User List'),
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
                'User Detail',
              ),
              onPressed: () {
                context.goNamed(AppRoutess.userDetail.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
