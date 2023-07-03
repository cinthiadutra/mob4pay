import 'package:flutter/material.dart';
import 'package:mob4pay/data/mob4pay_repository.dart';

class GraficoCard extends StatefulWidget {
  const GraficoCard({super.key});

  @override
  State<GraficoCard> createState() => _GraficoCardState();
}

class _GraficoCardState extends State<GraficoCard> {
  Mob4payRepository repository = Mob4payRepository();
  @override
  void initState() async {
    await repository.listarDespesas();
    super.initState();
  }

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
