import 'package:flutter/material.dart';
import 'package:mob4pay/views/sections/despesas_section.dart';
import 'package:mob4pay/views/widget/card_cartao.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mob4Pay'),
      ),
      drawer: const Drawer(),
      body: const Column(
        children: [CardCartao(), DespesasSection()],
      ),
      
    );
  }
}
