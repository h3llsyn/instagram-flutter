import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final bordaInstagram = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
      borderRadius: BorderRadius.circular(5.0),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/instagram-logo.png',
                width: 246,
              ),
              const SizedBox(height: 32,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Número de telefone, usuário ou email',
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: bordaInstagram,
                  enabledBorder: bordaInstagram,
                  focusedBorder: bordaInstagram,
                ),
              ),
              const SizedBox(height: 12,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: bordaInstagram,
                  enabledBorder: bordaInstagram,
                  focusedBorder: bordaInstagram,
                ),
              ),
              const SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF0095F6),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
