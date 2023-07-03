import 'package:flutter/material.dart';

class GraficoCard extends StatefulWidget {
  const GraficoCard({super.key});

  @override
  State<GraficoCard> createState() => _GraficoCardState();
}

class _GraficoCardState extends State<GraficoCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Image.asset(
        'assets/image/chart.jpeg',
        scale: 0.9,
      ),
    );
  }
}
