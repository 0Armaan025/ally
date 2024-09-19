import 'package:ally/common/custom_continue_button.dart';
import 'package:ally/constants/constants.dart';
import 'package:ally/features/introduction/introduction_screen.dart';
import 'package:ally/theme/Pallete.dart';
import 'package:ally/utils/moveScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete().backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image(
                  image: NetworkImage(
                      "https://protectyourwealth.ca/wp-content/uploads/2022/09/Life-Insurance-with-a-Mental-Illness-in-Canada-Logo.png"),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  "Welcome to $appName",
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Pallete().headlineTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Ally: Your pocket therapist & cheerleader! ( ) Set mindful goals, track mood, and unwind with music based on your feelings. Fun challenges & AI support keep you on track to a happier, healthier you. ",
                    style: GoogleFonts.roboto(),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              CustomContinueButton(
                text: 'Continue',
                onTap: () {
                  moveScreen(context, IntroductionScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
