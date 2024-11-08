import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  // Funkcja do zmiany koła odpowiedzi
  Color indexColorBg(data) {
    if (data['user_answer'] == data['correct_answer']) {
      return const Color.fromARGB(255, 55, 127, 222);
    } else {
      return const Color.fromARGB(255, 226, 68, 243);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map(
          (data) {
            return Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: indexColorBg(data),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Wyrównanie odpowiedzi do lewej
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        (data['question'] as String),
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (data['user_answer'] as String),
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 164, 78, 214),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        (data['correct_answer'] as String),
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 81, 159, 189),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}
