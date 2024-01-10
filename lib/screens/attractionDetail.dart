import 'package:flutter/material.dart';
class AttractionDetails extends StatefulWidget {
  const AttractionDetails({super.key});

  @override
  State<AttractionDetails> createState() => _AttractionDetailsState();
}

class _AttractionDetailsState extends State<AttractionDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Stack(),
      ),
    );
  }
}
