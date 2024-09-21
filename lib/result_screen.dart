import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key, 
    required this.chosenAnswers
  });

  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              "You answered X out x questions correctly", 
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 143, 121, 230),
                fontSize: 24,
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 30,),
            const Text("List"),
            const SizedBox(height: 30,),
            TextButton.icon(
            onPressed: () {}, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.loop_sharp),
            label: const Text('Restart Quiz!'),
          )
          ],
        ),
      ),
    );
  }
}