import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/components/home/transaction_history_item.dart';

class TransactionHistory extends StatelessWidget {
  TransactionHistory({super.key});

  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<dynamic> fetchUserData() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await db.collection("History").get();

    return querySnapshot.docs;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            print(snapshot.data.length);
            return Container(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HistoryItem(
                        image:
                            "assets/images/${snapshot.data[index]["name"]}.png",
                        name: snapshot.data[index]["name"],
                        date: snapshot.data[index]["date"],
                        amount: snapshot.data[index]["type"] == "income"
                            ? snapshot.data[index]["amount"]
                            : -snapshot.data[index]["amount"]);
                  },
                ));
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Center(child: Text("Something went wrong"));
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
