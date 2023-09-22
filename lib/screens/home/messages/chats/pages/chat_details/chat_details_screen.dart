import 'package:flutter/material.dart';

import 'package:pasha_ci_cd_test/models/index.dart';
import 'package:pasha_ci_cd_test/router/index.dart';

@RoutePage()
class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key, required this.chat});

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(chat.name),
      ),
    );
  }
}
