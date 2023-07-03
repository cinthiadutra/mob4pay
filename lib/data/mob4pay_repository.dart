import 'dart:developer';

import 'package:flutter/foundation.dart';

import 'package:mob4pay/data/cartao_model.dart';
import 'package:mob4pay/data/despesa_model.dart';
import 'package:mob4pay/data/mob4pay_service.dart';

class Mob4payRepository {
  ValueNotifier<List<CartaoModel>?> cartaoModel = ValueNotifier([]);
  ValueNotifier<List<DespesaModel>?> listaDespesas = ValueNotifier([]);
  final Mob4payService service = Mob4payService();

  Future<void> listarDespesas() async {
    final response = await service.listaDespesas();

    response.fold((error) {
      if (kDebugMode) {
        print(error);
      }
    }, (despesa) {
      listaDespesas.value = despesa;
    });
  }

  Future<void> buscarDadosCartao() async {
    final response = await service.dadosCartao();

    response.fold((error) {
      log(error);
    }, (sucesso) => cartaoModel.value = sucesso);
  }
}
