import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/login_screen.dart';
import 'package:flutter_chat_app/screens/register_screen.dart';

class LoginOrRegisterComponent extends StatefulWidget {
  const LoginOrRegisterComponent({super.key});

  @override
  State<LoginOrRegisterComponent> createState() => _LoginOrRegisterComponentState();
}

class _LoginOrRegisterComponentState extends State<LoginOrRegisterComponent> {
  bool showLoginScreen = true;
  
  void toggle(){
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return showLoginScreen ? LoginScreen(onTap: toggle) : RegisterScreen(onTap: toggle);
  }
}
