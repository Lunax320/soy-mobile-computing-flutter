import 'package:flutter/material.dart';

/// Boton grande (ocupa todo el ancho) 
class GeneralButton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;

  const GeneralButton({
    super.key,
    required this.buttonName,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: buttonColor,
          side: BorderSide(color: buttonColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

/// Boton chiquito
class LittleGenericButton extends StatelessWidget {
  final String buttonName;
  final Color buttonColor;
  final double buttonHeight;
  final double buttonWidth;

  const LittleGenericButton({
    super.key,
    required this.buttonName,
    required this.buttonColor,
    required this.buttonHeight,
    required this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      width: buttonWidth,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: buttonColor,
          side: BorderSide(color: buttonColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}


class SOYIcon extends StatelessWidget {
  final double tamano;

  const SOYIcon({super.key, required this.tamano});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/img_logo_soy.png', height: tamano);
  }
}

// Texto en cursiva y negrilla
class SOYText extends StatelessWidget {
  final double tamano;

  const SOYText({super.key, required this.tamano});

  @override
  Widget build(BuildContext context) {
    return Text(
      "SOY",
      style: TextStyle(
        color: Colors.white,
        fontSize: tamano,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}

// Formulario grande
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

// carta para review
class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3C3D5A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            ReviewInfo(),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 6),
                Icon(Icons.favorite_border, color: Colors.white, size: 24),
                SizedBox(width: 4),
                Text("320", style: TextStyle(color: Colors.white)),
                SizedBox(width: 24),
                Icon(Icons.comment_outlined, color: Colors.white, size: 24),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Info para la carta de review
class ReviewInfo extends StatelessWidget {
  const ReviewInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage:
                  AssetImage('assets/images/img_avatar_penguin.jpeg'),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Penguin Lover",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "15/12/2024",
                  style: TextStyle(color: Color(0xFFE9D4FF), fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Oblivion",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: 2),
            Text(
              "Grimes",
              style: TextStyle(color: Color(0xFFE9D4FF), fontSize: 14),
            ),
            SizedBox(height: 10),
            Text(
              "⭐⭐⭐⭐⭐ 5/5",
              style: TextStyle(color: Color(0xFFE7AF12), fontSize: 14),
            ),
            SizedBox(height: 10),
            Text(
              "This song is absolutely amazing! The synth melodies and ethereal vocals create such a unique atmosphere. Highly recommend!",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }
}

// carta de review
class SongCard extends StatelessWidget {
  const SongCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3C3D5A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Row(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/images/img_oblivion.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(width: 20),
  
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Oblivion",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Grimes",
                    style: TextStyle(
                      color: Color(0xFFE9D4FF),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: Color(0xFF504978),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(color: Color(0xFFA461C1), width: 1),
                        ),
                        child: Text(
                          "Electropop",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "3:05",
                        style: TextStyle(color: Color(0xFFE9D4FF), fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(Icons.star_border, color: Colors.white, size: 24),
          ],
        ),
      ),
    );
  }
}

// Boton de navegacion
class SOYBottomNavigationBar extends StatelessWidget {
  const SOYBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg_plain_bottom.png',
          width: double.infinity,
          height: 95,
          fit: BoxFit.fill,
        ),
        Container(
          height: 80,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, color: Color(0xFFE9D4FF), size: 23),
              Icon(Icons.search, color: Color(0xFFE9D4FF), size: 23),
              Icon(Icons.add_circle, color: Color(0xFFE9D4FF), size: 23),
              Icon(Icons.star, color: Color(0xFFE9D4FF), size: 23),
              Icon(Icons.person, color: Color(0xFFE9D4FF), size: 23),
            ],
          ),
        ),
      ],
    );
  }
}