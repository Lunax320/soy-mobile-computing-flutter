import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/widgets/reusable_widget.dart';

class CreateReviewScreen extends StatelessWidget {
  const CreateReviewScreen({super.key});

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
          // Contenido
          Column(
            children: [
              const CreateReviewHeader(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        SongCard(),
                        SizedBox(height: 15),
                        RatingSelectionCard(),
                        SizedBox(height: 15),
                        ReviewInputCard(),
                        SizedBox(height: 20),
                        GeneralButton(
                          buttonName: "Publish Review",
                          buttonColor: Color(0xFFA461C1),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SOYBottomNavigationBar(),
    );
  }
}

class CreateReviewHeader extends StatelessWidget {
  const CreateReviewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_plain_top_v2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            // Botón de back
            const Icon(Icons.arrow_back, color: Colors.white, size: 24),
            const SizedBox(height: 20),
            // Título
            const Text(
              "Create Review",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingSelectionCard extends StatelessWidget {
  const RatingSelectionCard({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rating",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Color(0xFFA461C1), size: 40),
                SizedBox(width: 8),
                Icon(Icons.star, color: Color(0xFFA461C1), size: 40),
                SizedBox(width: 8),
                Icon(Icons.star, color: Color(0xFFA461C1), size: 40),
                SizedBox(width: 8),
                Icon(Icons.star, color: Color(0xFFA461C1), size: 40),
                SizedBox(width: 8),
                Icon(Icons.star, color: Color(0xFFA461C1), size: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class ReviewInputCard extends StatelessWidget {
  const ReviewInputCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3C3D5A),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your opinion",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: 5,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Share your opinion about this song...",
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Color(0xFFA461C1)),
                ),
              ),
            ),
            SizedBox(height: 12),

              Text(
              "0/500 characters",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}