import 'dart:io';

import 'package:mob4pay/data/cartao_model.dart';
import 'package:mob4pay/data/despesa_model.dart';
import 'package:mob4pay/data/mob4pay_service.dart';

class Mob4payRepository {
  List<CartaoModel>? cartaoModel = [];
  List<DespesaModel>? listaDespesas = [];
  final Mob4payService service = Mob4payService();

  Future<void> listarDespesas() async {
    final response = await service.listaDespesas();

    response.fold((error) => const HttpException('Erro inesperado'), (despesa) {
      listaDespesas = despesa;
    });
  }

  Future<void> buscarDadosCartao() async {
    final response = await service.dadosCartao();

    response.fold(
        (error) => HttpException(error), (sucesso) => cartaoModel = sucesso);
  }
}
