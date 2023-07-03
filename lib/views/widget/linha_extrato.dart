import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  @override
  Widget build(BuildContext context) {
    DateTime data = DateTime.parse(widget.dataDespesa!);
    String datafim = DateFormat('dd/MM/yyyy').format(data);
    return Padding(
        padding: const EdgeInsets.only(
          top: 10,
        ),
        child: Row(children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.grey[300],
            child: Center(child: Text(datafim)),
          ),
          Container(
            height: 100,
            width: MediaQuery.sizeOf(context).width - 120,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.descricao ?? 'Pagamento',
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold)),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'R\$ ',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      TextSpan(
                        text: "${widget.valor}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
