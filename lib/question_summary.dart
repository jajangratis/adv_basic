import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  width: 25, // The width and height of the circle
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: data['user_answer'] as String == data['correct_answer'] as String ? Colors.green : Colors.red 
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    ((data['question_index'] as int) + 1 ).toString(),
                    style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                    )
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    children: [
                      Text
                        (data['question'] as String,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 203, 199, 221),
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      const SizedBox( height: 5,),
                      Text(data['user_answer'] as String, style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 157, 143, 161),
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      )),
                      Text(data['correct_answer'] as String, style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 50, 205, 97),
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      )),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}