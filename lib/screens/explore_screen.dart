import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/screens/login_screen.dart';
import 'package:soy_mobile_computing_flutter/screens/for_you_feed_screen.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

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
              const ExploreScreenHeader(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const SongList(),
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

class ExploreScreenHeader extends StatelessWidget {
  const ExploreScreenHeader({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
      
            const Text(
              "Explore electropop",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
  
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LittleGenericButton(
                  buttonName: "Songs",
                  buttonColor: Color(0xFF64779C),
                  buttonHeight: 40,
                  buttonWidth: 180,
                ),
                SizedBox(width: 10),
                LittleGenericButton(
                  buttonName: "Artists",
                  buttonColor: Color(0xFFA461C1),
                  buttonHeight: 40,
                  buttonWidth: 180,
                ),
              ],
            ),
            const SizedBox(height: 20),
         
            const GeneralForm(
              labelText: "Search",
              hintText: "Search songs, artists...",
            ),
            const SizedBox(height: 5),
       
            const GenresFilter(),
          ],
        ),
      ),
    );
  }
}

class GenresFilter extends StatelessWidget {
  const GenresFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          LittleGenericButton(
            buttonName: "All",
            buttonColor: const Color(0xFF64779C),
            buttonHeight: 40,
            buttonWidth: 70,
          ),
          const SizedBox(width: 8),
          LittleGenericButton(
            buttonName: "Electropop",
            buttonColor: const Color(0xFFA461C1),
            buttonHeight: 40,
            buttonWidth: 130,
          ),
          const SizedBox(width: 8),
          LittleGenericButton(
            buttonName: "Synth-pop",
            buttonColor: const Color(0xFFA461C1),
            buttonHeight: 40,
            buttonWidth: 130,
          ),
          const SizedBox(width: 8),
          LittleGenericButton(
            buttonName: "Synthwave",
            buttonColor: const Color(0xFFA461C1),
            buttonHeight: 40,
            buttonWidth: 130,
          ),
          const SizedBox(width: 8),
          LittleGenericButton(
            buttonName: "Dream Pop",
            buttonColor: const Color(0xFFA461C1),
            buttonHeight: 40,
            buttonWidth: 130,
          ),
          const SizedBox(width: 8),
          LittleGenericButton(
            buttonName: "Indie Pop",
            buttonColor: const Color(0xFFA461C1),
            buttonHeight: 40,
            buttonWidth: 130,
          ),
        ],
      ),
    );
  }
}

class SongList extends StatelessWidget {
  const SongList({super.key});

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
                SongCard(),
                SizedBox(height: 15),
                SongCard(),
                SizedBox(height: 15),
                SongCard(),
                SizedBox(height: 15),
                SongCard(),
                SizedBox(height: 15),
                SongCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SongCard extends StatelessWidget {
  const SongCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF3C3D5A),
        borderRadius: BorderRadius.circular(15),
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