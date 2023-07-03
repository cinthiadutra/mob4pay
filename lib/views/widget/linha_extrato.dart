import 'package:flutter/material.dart';
import 'package:mob4pay/data/mob4pay_repository.dart';

class LinhaExtrato extends StatefulWidget {
  final String? dataDespesa;
  final String? descricao;
  final String? valor;

  const LinhaExtrato({
    super.key,
    this.dataDespesa,
    this.descricao,
    this.valor,
  });

  @override
  State<LinhaExtrato> createState() => _LinhaExtratoState();
}

class _LinhaExtratoState extends State<LinhaExtrato> {
  Mob4payRepository repo = Mob4payRepository();
  @override
  void initState() {
    repo.listarDespesas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.grey[300],
            child: Center(child: Text(widget.dataDespesa ?? '23 Marc')),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width - 120,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.descricao ?? 'Pagamento',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
                Text(
                  widget.valor ?? '200.00',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
