import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/screens/start_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_plain.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 180), // Spacer superior

              // Fila con logo y texto SOY
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SOYIcon(tamano: 150),
                  const SizedBox(width: 14),
                  const Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: SOYText(tamano: 60),
                  ),
                ],
              ),

              const SizedBox(height: 100),

              // Label Email
              const Text(
                "Email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Campo Email
              const GeneralForm(
                labelText: "Email",
                hintText: "correo@ejemplo.com",
              ),

              const SizedBox(height: 16),

              // Label Password
              const Text(
                "Password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Campo Password
              GeneralForm(
                labelText: "Password",
                hintText: "Password",
                isPassword: true,
              ),

              const SizedBox(height: 50),

              // Botón Login
              const GeneralButton(
                buttonName: "Login",
                buttonColor: Color(0xFFA461C1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GeneralForm extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPassword;

  const GeneralForm({
    super.key,
    required this.labelText,
    this.hintText = "",
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.white),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white54),
          filled: true,
          fillColor: const Color(0xFF695E92),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFA461C1), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFA461C1), width: 2),
          ),
        ),
      ),
    );
  }
}