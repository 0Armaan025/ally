import 'package:ally/common/appBar.dart';
import 'package:ally/common/exercise_card.dart';
import 'package:ally/theme/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageUrls = [
    "https://images.unsplash.com/photo-1494178270175-e96de2971df9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bW90aXZhdGlvbnxlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1548438294-1ad5d5f4f063?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bW90aXZhdGlvbnxlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1589561253898-768105ca91a8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdGl2YXRpb258ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1552508744-1696d4464960?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1vdGl2YXRpb258ZW58MHx8MHx8fDA%3D",
    "https://images.unsplash.com/photo-1497561813398-8fcc7a37b567?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fG1vdGl2YXRpb258ZW58MHx8MHx8fDA%3D",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Good evening, Armaan 👋",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Pallete().headlineTextColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "7th May, 2024",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: FlutterCarousel(
                  options: CarouselOptions(
                    height: 200.0,
                    showIndicator: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    slideIndicator: CircularSlideIndicator(),
                  ),
                  items: imageUrls.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: NetworkImage(imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Elevate your day with exercises",
                  style: GoogleFonts.poppins(
                    color: Pallete().headlineTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ExerciseCard(
                        url:
                            "https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1lZGl0YXRpb258ZW58MHx8MHx8fDA%3D",
                        // exerciseText: 'Blinking Exercise',
                      ),
                      ExerciseCard(
                        url:
                            'https://media.istockphoto.com/id/1413047271/vector/woman-practicing-breathing-exercise-in-flat-design-on-white-background.jpg?s=612x612&w=0&k=20&c=9X_R9lylUvH3UszdJrmsqIB53QErVOfis6rqKI7cNP8=',
                      ),
                      ExerciseCard(
                        url:
                            'https://images.ctfassets.net/qpn1gztbusu2/xWD8cVb7qxCSAl6J4KiR5/ab36494242fb67f804de509fe059fc24/books-about-gratitude-social.jpg?fm=jpg&w=3840&q=70',
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text('Coming Soon...',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                      const SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Challenges time, champ! 🏆",
                  style: GoogleFonts.poppins(
                    color: Pallete().headlineTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
