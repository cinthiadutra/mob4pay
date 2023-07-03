import 'dart:convert';

class DespesaModel {
  final String? date;
  final String? store;
  final String? description;
  final double? value;
  DespesaModel({
    this.date,
    this.store,
    this.description,
    this.value,
  });

  DespesaModel copyWith({
    String? date,
    String? store,
    String? description,
    double? value,
  }) {
    return DespesaModel(
      date: date ?? this.date,
      store: store ?? this.store,
      description: description ?? this.description,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'store': store,
      'description': description,
      'value': value,
    };
  }

  factory DespesaModel.fromMap(Map<String, dynamic> map) {
    return DespesaModel(
      date: map['date'],
      store: map['store'],
      description: map['description'],
      value: map['value']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory DespesaModel.fromJson(String source) =>
      DespesaModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DespesaModel(date: $date, store: $store, description: $description, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DespesaModel &&
        other.date == date &&
        other.store == store &&
        other.description == description &&
        other.value == value;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        store.hashCode ^
        description.hashCode ^
        value.hashCode;
  }
}
