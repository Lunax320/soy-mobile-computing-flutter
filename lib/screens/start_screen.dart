import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/widgets/reusable_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_plain.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                SOYText(tamano: 90),
                const SizedBox(height: 18), // Entre SOY y logo
                SOYIcon(tamano: 200),
                const SizedBox(height: 35), // Entre logo y frase
                const Text(
                  "Live a life you will remember",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10), // Live y Avicii

                const Text(
                  "-Avicii, The Nights",
                  style: TextStyle(
                    color: Color(0xFFA461C1),
                    fontSize: 18,  
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 60), // Entre autor y botOn Login

                GeneralButton(
                  buttonName: "Login",
                  buttonColor: Color(0xFFA461C1),
                ),

                const SizedBox(height: 20), // Entre Login y Register

                GeneralButton(
                  buttonName: "Register",
                  buttonColor: Color(0xFF695E92), 
                ),

                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}