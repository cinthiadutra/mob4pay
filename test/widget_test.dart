// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mob4pay/data/mob4pay_repository.dart';
import 'package:mob4pay/data/mob4pay_service.dart';
import 'package:mockito/mockito.dart';

// Classe que representa o service utilizado no método
class Mob4PayServiceMock extends Mock implements Mob4payService {}

class Mob4PayRepositoryMock extends Mock implements Mob4payRepository {}

void main() {
  late Mob4payRepository repository;
  late Mob4payService service;

  setUp(() {
    service = Mob4PayServiceMock();
    repository = Mob4PayRepositoryMock();
  });
  test('Teste buscarDadosCartao', () async {
    // Simule o service.dadosCartao() para retornar um valor de sucesso

    when(service.dadosCartao()).thenAnswer((_) async => const Right([]));

    // Crie uma instância da classe que contém o método buscarDadosCartao()

    // Chame o método buscarDadosCartao()
    await repository.buscarDadosCartao();

    // Verifique se o valor foi atualizado corretamente
    expect(repository.cartaoModel.value, 'Dados do Cartão');
  });

  test('Teste listarDespesas', () async {
    // Simule o service.listaDespesas() para retornar um valor de sucesso

    when(service.listaDespesas()).thenAnswer((_) async => const Right([]));

    // Chame o método listarDespesas()
    await repository.listarDespesas();

    // Verifique se a lista de despesas foi atualizada corretamente
    expect(repository.listaDespesas.value, ['Despesa 1', 'Despesa 2']);
  });
}
