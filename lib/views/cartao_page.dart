import 'package:flutter/material.dart';
import 'package:mob4pay/views/sections/despesas_section.dart';
import 'package:mob4pay/views/widget/card_cartao.dart';

class CartaoPage extends StatefulWidget {
  const CartaoPage({super.key});

  @override
  State<CartaoPage> createState() => _CartaoPageState();
}

class _CartaoPageState extends State<CartaoPage> {
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
