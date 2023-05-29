import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(
      {required this.resultScore, required this.resetHandler, super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and inncoent person.';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likealbe person.';
    } else if (resultScore <= 16) {
      resultText = 'You are strange person.';
    } else {
      resultText = 'You are bad person.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: resetHandler,
              child: const Text('Reset'),
            ),
          )
        ],
      ),
    );
  }
}
