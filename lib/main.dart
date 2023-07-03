import 'package:flutter/material.dart';
import 'package:mob4pay/core/thema/mob4pay_ui.dart';
import 'package:mob4pay/views/sections/despesas_section.dart';
import 'package:mob4pay/views/widget/card_cartao.dart';
import 'package:mob4pay/views/widget/card_grafico.dart';

void main() {
  runApp(const Mob4Pay());
}

class Mob4Pay extends StatefulWidget {
  const Mob4Pay({super.key});

  @override
  State<Mob4Pay> createState() => _Mob4PayState();
}

class _Mob4PayState extends State<Mob4Pay> {
  @override
  void initState() {
    super.initState();
  }

  int currentIndex = 0;

  List<Widget> pages = [
    const CardCartao(),
    const GraficoCard(),
  ];
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mob4payUi.theme,
      title: 'Mob4Pay',
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
            title: const Text(
          "Mob4Pay",
        )),
        body: Column(
          children: [pages[currentIndex], const DespesasSection()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.wallet_travel_outlined), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_chart_sharp), label: ""),
            ]),
      ),
    );
  }
}
