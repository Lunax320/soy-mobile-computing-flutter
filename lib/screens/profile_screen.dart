import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/widgets/reusable_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo
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
              const ProfileScreenHeader(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const ProfileReviewList(),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const SOYBottomNavigationBar(),
    );
  }
}

class ProfileScreenHeader extends StatelessWidget {
  const ProfileScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_plain_top.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 25),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.edit, color: Colors.white, size: 24),
                Icon(Icons.settings, color: Colors.white, size: 24),
              ],
            ),
            
            const SizedBox(height: 20),
            
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color(0xFFA461C1), width: 2),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/img_avatar_penguin.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFA461C1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.photo_camera, color: Colors.white, size: 20),
                ),
              ],
            ),
            
            const SizedBox(height: 15),
            
            const Text(
              "Penguin Lover",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 8),
            
            const Text(
              "@peguingod",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: 12),
            
            ProfileCountsRow(),
          ],
        ),
      ),
    );
  }
}

class ProfileCountsRow extends StatelessWidget {
  const ProfileCountsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              "12",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Reviews",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(width: 55),
    
        Column(
          children: [
            Text(
              "234",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Followers",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(width: 50),
             
        Column(
          children: [
            Text(
              "189",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Following",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProfileReviewList extends StatelessWidget {
  const ProfileReviewList({super.key});

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
                  "Publicaciones",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ProfileReviewCard(),
                SizedBox(height: 15),
                ProfileReviewCard(),
                SizedBox(height: 15),
                ProfileReviewCard(),
                SizedBox(height: 15),
                ProfileReviewCard(),
                SizedBox(height: 15),
                ProfileReviewCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileReviewCard extends StatelessWidget {
  const ProfileReviewCard({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          "Penguin Lover",
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
                Row(
                  children: [
                    Icon(Icons.edit, color: Colors.white, size: 20),
                    SizedBox(width: 12),
                    Icon(Icons.delete, color: Colors.white, size: 20),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            ProfileReviewInfo(),
          ],
        ),
      ),
    );
  }
}

class ProfileReviewInfo extends StatelessWidget {
  const ProfileReviewInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}