import 'package:flutter/material.dart';
import 'package:mob4pay/views/widget/card_cartao.dart';
import 'package:mob4pay/views/widget/linha_extrato.dart';

class DespesasSection extends StatefulWidget {
  const DespesasSection({super.key});

  @override
  State<DespesasSection> createState() => _DespesasSectionState();
}

class _DespesasSectionState extends State<DespesasSection> {
  @override
  void initState() {
    super.initState();
    repository.listarDespesas();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
          valueListenable: repository.listaDespesas,
          builder: (context, despesas, _) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: repository.listaDespesas.value?.length,
                itemBuilder: (context, i) {
                  return LinhaExtrato(
                    dataDespesa: despesas?[i].date,
                    descricao: despesas?[i].description,
                    valor: despesas?[i].value.toString(),
                  );
                });
          }),
    );
  }
}
