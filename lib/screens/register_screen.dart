import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/screens/start_screen.dart';
import 'package:soy_mobile_computing_flutter/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
              const SizedBox(height: 100), 
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SOYIcon(tamano: 150),
                  SizedBox(width: 14),
                  Padding(
                    padding: EdgeInsets.only(top: 75),
                    child: SOYText(tamano: 60),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              const Text(
                "Full Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const GeneralForm(
                labelText: "Name",
                hintText: "Tu nombre completo",
              ),

              const SizedBox(height: 16),

              const Text(
                "User",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Campo User
              const GeneralForm(
                labelText: "User",
                hintText: "Nombre de usuario",
              ),

              const SizedBox(height: 16),

              const Text(
                "Email",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const GeneralForm(
                labelText: "Email",
                hintText: "correo@ejemplo.com",
              ),

              const SizedBox(height: 16),

              const Text(
                "Password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const GeneralForm(
                labelText: "Password",
                hintText: "••••••••",
                isPassword: true,
              ),

              const SizedBox(height: 30),

              // Botón Create Account (centrado)
              const Center(
                child: GeneralButton(
                  buttonName: "Create Account",
                  buttonColor: Color(0xFFA461C1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}