import 'package:flutter/material.dart';

class SplashViewModel {
  Future<void> iniciar(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    if (context.mounted) {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }
}
