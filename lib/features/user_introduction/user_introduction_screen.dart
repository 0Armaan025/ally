import 'package:ally/common/appBar.dart';
import 'package:ally/common/custom_continue_button.dart';
import 'package:ally/theme/Pallete.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserIntroductionScreen extends StatefulWidget {
  const UserIntroductionScreen({Key? key}) : super(key: key);

  @override
  State<UserIntroductionScreen> createState() => _UserIntroductionScreenState();
}

class _UserIntroductionScreenState extends State<UserIntroductionScreen> {
  String? _selectedFeeling;
  TextEditingController _statusController = TextEditingController();

  @override
  void dispose() {
    _statusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.05),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Please enter your name",
                  style: GoogleFonts.poppins(
                    color: Pallete().headlineTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 48.0, left: 16),
                child: TextFormField(
                  style: TextStyle(color: Pallete().headlineTextColor),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "How are you feeling today?",
                  style: GoogleFonts.poppins(
                    color: Pallete().headlineTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Pallete().secondaryColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedFeeling = "😞 Bad";
                        });
                      },
                      child: Text(
                        "😞",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedFeeling = "😐 Neutral";
                        });
                      },
                      child: Text(
                        "😐",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedFeeling = "🙂 Good";
                        });
                      },
                      child: Text(
                        "🙂",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedFeeling = "😊 Best";
                        });
                      },
                      child: Text(
                        "😊",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectedFeeling = "😢 The Worst";
                        });
                      },
                      child: Text(
                        "😢",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: _selectedFeeling != null
                    ? Text(
                        "You selected: $_selectedFeeling",
                        style: TextStyle(fontSize: 18),
                      )
                    : Container(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Pallete().headlineTextColor),
                  controller: _statusController,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Pallete().headlineTextColor),
                    labelText: "Describe your status",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  maxLines: 4,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomContinueButton(text: 'Get Started!', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
