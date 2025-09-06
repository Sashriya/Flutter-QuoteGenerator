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
    "Feel pain, Accept pain and know pain. Those who do not know pain will never understand the true peace.",
    "Believe in yourself.",
    "Dream big, start small.",
    "Happiness is homemade.",
    "It does not matter how slowly you go as long as you do not stop.",
    "Success is the sum of small efforts, repeated day in and day out.",
    "A one-hour workout is 4% of your day. No excuses",
    "The only thing is can trusted is Money.",
    "The world forgets the week and remembers the strong.",
    "Wake up to reality, Nothing ever goes as planned in this Accursed World."
    "The Longer you Live, The more you will realize that the only things that truly exist in this reality are merely PAIN, SUFFERING, FUTILITY.",
    "EveryWhere you Look in this World, Wherever there is Light There will always be shadows to be Found.",
    "As Well As Long as There is a Concept of Victors, The Vanquished will also Exist."
    "The selfish intent of wanting to Preserve Peace initiates Wars and Hatred is Born, In oredered to Protect LOVE.",
    "There are Nexuses, Casual Relationships that cannot be seperated."
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
