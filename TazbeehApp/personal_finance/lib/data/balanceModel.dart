import 'package:cloud_firestore/cloud_firestore.dart';

class BalanceModel {
  final String email;
  final double income;
  final double expense;

  const BalanceModel(
      {required this.email, required this.income, required this.expense});

  toJson() {
    return {"email": email, "income": income, "expense": expense};
  }

  factory BalanceModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return BalanceModel(
      email: data['email'],
      income: data['income'],
      expense: data['expense'],
    );
  }
}
