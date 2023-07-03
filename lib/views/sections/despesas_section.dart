import 'package:flutter/material.dart';
import 'package:mob4pay/data/mob4pay_repository.dart';
import 'package:mob4pay/views/widget/linha_extrato.dart';

class DespesasSection extends StatefulWidget {
  const DespesasSection({super.key});

  @override
  State<DespesasSection> createState() => _DespesasSectionState();
}

class _DespesasSectionState extends State<DespesasSection> {
  Mob4payRepository repository = Mob4payRepository();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: repository.listaDespesas!.length,
        itemBuilder: (context, i) {
          repository.listarDespesas();
          return LinhaExtrato(
            dataDespesa: repository.listaDespesas?[i].date,
            descricao: repository.listaDespesas?[i].description,
            valor: repository.listaDespesas?[i].value.toString(),
          );
        });
  }
}
