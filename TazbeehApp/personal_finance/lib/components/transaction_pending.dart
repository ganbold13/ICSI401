import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/components/transaction_pending_item.dart';

class TransactionPending extends StatelessWidget {
  TransactionPending({super.key});

  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<dynamic> fetchUserData() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await db.collection("Bills").get();

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
                    return PendingItem(
                      id: snapshot.data[index]['billId'],
                      name: snapshot.data[index]['billName'],
                      date: snapshot.data[index]['billDate'],
                      image:
                          "assets/images/${snapshot.data[index]['billName']}.png",
                      amount: snapshot.data[index]['billAmount'],
                      type: snapshot.data[index]["billType"],
                    );
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
