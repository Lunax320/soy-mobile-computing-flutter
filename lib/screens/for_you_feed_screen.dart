import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/widgets/reusable_widget.dart';

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
      bottomNavigationBar: SOYBottomNavigationBar(),
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