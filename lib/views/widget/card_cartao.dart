import 'package:flutter/material.dart';
import 'package:mob4pay/data/mob4pay_repository.dart';

class CardCartao extends StatefulWidget {
  const CardCartao({super.key});

  @override
  State<CardCartao> createState() => _CardCartaoState();
}

Mob4payRepository repository = Mob4payRepository();

class _CardCartaoState extends State<CardCartao> {
  @override
  void initState() {
    repository.buscarDadosCartao();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: repository.cartaoModel,
        builder: (context, cartao, _) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cartao?.length,
              itemBuilder: (context, i) {
                return SizedBox(
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        const Divider(
                          thickness: 3,
                          height: 4,
                          color: Colors.orange,
                        ),
                        Image.asset(
                          'assets/image/cartao2.png',
                        ),
                        Positioned(
                          top: 30,
                          left: 150,
                          child: Image.asset(
                            'assets/image/master.png',
                            scale: 9.0,
                          ),
                        ),
                        const Positioned(
                          top: 100,
                          left: 150,
                          child: Text(
                            'Mob4Pay',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left: 100,
                          child: Text(
                            cartao?[i].cardNumber ?? '',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 190,
                          left: 40,
                          child: Text(
                            cartao?[i].name ?? '',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 190,
                          left: 140,
                          child: Text(
                            cartao?[i].expirationDate ?? '',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        });
  }
}
