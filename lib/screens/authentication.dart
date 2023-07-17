import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool _isLogging = false;
  void logginSetter() {
    setState(() {
      _isLogging = !_isLogging;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: LoginForm(callback: logginSetter),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  final void callback;

  LoginForm({super.key, required this.callback});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return const Container();
  }
}
