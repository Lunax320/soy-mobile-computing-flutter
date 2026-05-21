import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/widgets/reusable_widget.dart';

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

              FullNameText(),

              const SizedBox(height: 8),

              const GeneralForm(
                labelText: "Name",
                hintText: "Tu nombre completo",
              ),

              const SizedBox(height: 16),

              UserText(),

              const SizedBox(height: 8),

              const GeneralForm(
                labelText: "User",
                hintText: "Nombre de usuario",
              ),

              const SizedBox(height: 16),

              EmailText(),

              const SizedBox(height: 8),

              const GeneralForm(
                labelText: "Email",
                hintText: "correo@ejemplo.com",
              ),

              const SizedBox(height: 16),

              PasswordText(),

              const SizedBox(height: 8),

              const GeneralForm(
                labelText: "Password",
                hintText: "••••••••",
                isPassword: true,
              ),

              const SizedBox(height: 30),

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

class PasswordText extends StatelessWidget {
  const PasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Password",
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class EmailText extends StatelessWidget {
  const EmailText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Email",
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class UserText extends StatelessWidget {
  const UserText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "User",
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class FullNameText extends StatelessWidget {
  const FullNameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Full Name",
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}