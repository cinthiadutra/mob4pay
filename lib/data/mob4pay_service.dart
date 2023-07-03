import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mob4pay/data/cartao_model.dart';
import 'package:mob4pay/data/despesa_model.dart';

class Mob4payService {
  final String urlDespesas =
      "https://my-json-server.typicode.com/Adrianogba/desafio-flutter/purchases";
  String urlCartao =
      "https://my-json-server.typicode.com/Adrianogba/desafio-flutter/client_info";
  final dio = Dio();

  Future<Either<String, List<CartaoModel>>> dadosCartao() async {
    try {
      var response = await dio.get(
        urlCartao,
      );
      if (response.statusCode == 200) {
        final data = response.data;

        if (data is List) {
          final cartao = data
              .map((objetoJson) => CartaoModel.fromMap(objetoJson))
              .toList();
          return Right(cartao);
        } else {
          return Left(data.printError());
        }
      } else {
        return const Left('Erro na solicitação:');
      }
    } catch (e) {
      return Left('$e'.toString());
    }
  }

  Future<Either<String, List<DespesaModel>>> listaDespesas() async {
    try {
      var response = await dio.get(
        urlDespesas,
      );
      if (response.statusCode == 200) {
        final data = response.data;

        if (data is List) {
          final despesa = data
              .map((objetoJson) => DespesaModel.fromJson(objetoJson))
              .toList();
          return Right(despesa);
        } else {
          return Left(data.printError());
        }
      } else {
        return Left('Erro na solicitação: ${response.statusCode}');
      }
    } catch (e) {
      return Left('$e'.toString());
    }
  }
}
