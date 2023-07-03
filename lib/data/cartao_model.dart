import 'dart:convert';

class CartaoModel {
  final String? name;
  final String? cardNumber;
  final String? expirationDate;
  CartaoModel({
     this.name,
     this.cardNumber,
     this.expirationDate,
  });

  

  CartaoModel copyWith({
    String? name,
    String? cardNumber,
    String? expirationDate,
  }) {
    return CartaoModel(
      name: name ?? this.name,
      cardNumber: cardNumber ?? this.cardNumber,
      expirationDate: expirationDate ?? this.expirationDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'cardNumber': cardNumber,
      'expirationDate': expirationDate,
    };
  }

  factory CartaoModel.fromMap(Map<String, dynamic> map) {
    return CartaoModel(
      name: map['name'],
      cardNumber: map['cardNumber'],
      expirationDate: map['expirationDate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CartaoModel.fromJson(String source) => CartaoModel.fromMap(json.decode(source));

  @override
  String toString() => 'CartaoModel(name: $name, cardNumber: $cardNumber, expirationDate: $expirationDate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CartaoModel &&
      other.name == name &&
      other.cardNumber == cardNumber &&
      other.expirationDate == expirationDate;
  }

  @override
  int get hashCode => name.hashCode ^ cardNumber.hashCode ^ expirationDate.hashCode;
}
