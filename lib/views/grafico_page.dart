import 'package:flutter/material.dart';
import 'package:mob4pay/views/sections/despesas_section.dart';
import 'package:mob4pay/views/widget/card_grafico.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mob4Pay'),
      ),
      drawer: const Drawer(),
      body: const Column(
        children: [
          GraficoCard(),
          SizedBox(
            height: 30,
          ),
          DespesasSection()
        ],
      ),
    );
  }
}
