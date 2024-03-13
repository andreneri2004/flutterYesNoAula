import 'package:flutter/material.dart';
import 'package:yesno/src/config/theme/app_theme.dart';
import 'package:yesno/src/screens/chat/chat_screen.dart';
import 'package:yesno/src/screens/home_sreeen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes-No',
      theme: AppTheme(selectedColor: 5).theme(),
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
    );
  }
}
