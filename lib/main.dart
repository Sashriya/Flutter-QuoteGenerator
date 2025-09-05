import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuotesApp());
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: QuotesHome());
  }
}

class QuotesHome extends StatefulWidget {
  @override
  State<QuotesHome> createState() => _QuoteHomeState();
}

class _QuoteHomeState extends State<QuotesHome> {
  final quotes = [
    "If you can't feel the real pain, you can't feel the real peace",
    "Believe in yourself.",
    "Dream big, start small.",
    "Happiness is homemade.",
    "It does not matter how slowly you go as long as you do not stop.",
    "Success is the sum of small efforts, repeated day in and day out.",
    "A one-hour workout is 4% of your day. No excuses",
  ];

  String currentQuote = "";

  void getRandomQuote() {
    setState(() {
      currentQuote = quotes[Random().nextInt(quotes.length)];
    });
  }

  @override
  void initState() {
    super.initState();
    getRandomQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Text(
                  currentQuote,
                  style: const TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: getRandomQuote,
                child: const Text("New Quote"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
