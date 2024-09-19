import 'package:ally/constants/constants.dart';
import 'package:ally/theme/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar({String text = appName}) {
  return AppBar(
    title: Text(
      text,
      style: GoogleFonts.poppins(color: Pallete().headlineTextColor),
    ),
    backgroundColor: Pallete().appBarColor,
    centerTitle: true,
  );
}
