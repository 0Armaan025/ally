import 'package:flutter/material.dart';

class ExerciseCard extends StatefulWidget {
  final String url;
  const ExerciseCard({super.key, required this.url});

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin:
          const EdgeInsets.symmetric(horizontal: 0).copyWith(right: 16, top: 8),
      width: size.width * 0.6,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(widget.url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
