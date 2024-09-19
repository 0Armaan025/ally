import 'package:ally/theme/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContinueButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  const CustomContinueButton(
      {super.key, required this.text, required this.onTap});

  @override
  State<CustomContinueButton> createState() => _CustomContinueButtonState();
}

class _CustomContinueButtonState extends State<CustomContinueButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: size.height * 0.06,
        margin: const EdgeInsets.symmetric(horizontal: 18),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Pallete().buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.text,
          style: GoogleFonts.roboto(
            color: Pallete().buttonTextColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
