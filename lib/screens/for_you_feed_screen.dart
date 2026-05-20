import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/screens/start_screen.dart';

class ForYouFeedScreen extends StatelessWidget {
  const ForYouFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_plain.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Column(
            children: [
              const FeedScreenHeader(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const ReviewList(),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationBar(),
    );
  }
}

class FeedScreenHeader extends StatelessWidget {
  const FeedScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_plain_top_v3.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              const SizedBox(height: 25),
              const Row(
                children: [
                  SizedBox(width: 9),
                  SOYIcon(tamano: 57),
                  SizedBox(width: 12),
                  SOYText(tamano: 45),
                ],
              ),
              const SizedBox(height: 15),
              
              const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LittleGenericButton(buttonName: "For You", buttonColor: Color(0xFF64779C), buttonHeight: 40, buttonWidth: 114),
                    SizedBox(width: 12),
                    LittleGenericButton(buttonName: "Social", buttonColor: Color(0xFFA461C1), buttonHeight: 40, buttonWidth: 114),
                    SizedBox(width: 12),
                    LittleGenericButton(buttonName: "Latest", buttonColor: Color(0xFFA461C1), buttonHeight: 40, buttonWidth: 114),
                  ],
                ),
            ],
          ),
      ),
    );
  }
}

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(height: 20),
               Text(
                "Recommended reviews for you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    ),
                ),

                SizedBox(height: 20),

                ReviewCard(),
                SizedBox(height: 15),
                ReviewCard(),
                SizedBox(height: 15),
                ReviewCard(),
                SizedBox(height: 15),
                ReviewCard(),
                SizedBox(height: 15),
                ReviewCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3C3D5A),
        borderRadius: BorderRadius.circular(20),
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
              backgroundImage: AssetImage('assets/images/img_avatar_penguin.jpeg'),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sarah Johnson",
                  style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
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
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
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
    required this.buttonWidth
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

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key});

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
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.home, color: Color(0xFFE9D4FF), size: 23),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search, color: Color(0xFFE9D4FF), size: 23),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.add_circle, color: Color(0xFFE9D4FF), size: 23),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.star, color: Color(0xFFE9D4FF), size: 23),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Color(0xFFE9D4FF), size: 23),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}