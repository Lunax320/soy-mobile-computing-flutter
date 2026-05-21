import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/widgets/reusable_widget.dart';

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
                    child: 
                    SOYText(tamano: 60),
                  ),
                ],
              ),

              const SizedBox(height: 100),

              LabelEmail(),

              const SizedBox(height: 8),
           
              EmailField(),

              const SizedBox(height: 16),

              LabelPassword(),

              const SizedBox(height: 8),

              PasswordField(),

              const SizedBox(height: 50),

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

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GeneralForm(
      labelText: "Password",
      hintText: "Password",
      isPassword: true,
    );
  }
}

class LabelPassword extends StatelessWidget {
  const LabelPassword({
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

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const GeneralForm(
      labelText: "Email",
      hintText: "correo@ejemplo.com",
    );
  }
}

class LabelEmail extends StatelessWidget {
  const LabelEmail({
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