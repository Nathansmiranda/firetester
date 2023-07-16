import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService {
  final CollectionReference _coffeeCollection = FirebaseFirestore.instance.collection('coffees');

  Future updateUserData(String sugars, String name, int strength) async {
    return await _coffeeCollection.doc();
  }
}
