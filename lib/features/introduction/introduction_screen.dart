import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:typewritertext/typewritertext.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.4),
              Center(
                child: TypeWriter(
                  controller: TypeWriterController.fromValue(
                    TypeWriterValue([
                      'Hi! 👋',
                      'I\'m Ally, your pocket therapist & cheerleader!',
                      'Let\'s get started with your new journey! 🚀'
                    ]),
                    duration: const Duration(milliseconds: 100),
                    repeat: false,
                  ),
                  builder: (context, value) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        value.text,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 90),
              Center(
                child: CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      onPressed: () {
                        // moveScreen(context, const OnboardingScreen2());
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
